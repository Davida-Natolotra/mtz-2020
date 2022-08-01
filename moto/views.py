import calendar
from tokenize import String
from asgiref.sync import sync_to_async
from django.contrib import messages
from django.http.response import JsonResponse, HttpResponseRedirect
from django.shortcuts import redirect
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from facture.models import BLMoto, FactureMoto
from moto.form import MotoForm, MotoFormCom
from moto.models import Moto
from datetime import datetime as dt, timedelta
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .serializers import MotoSerializer
from django.db.models import Max


# Create your views here.
@login_required(login_url='loginPage')
def index(request):
    motos = Moto.objects.all()
    count = len(motos)
    try:
        lastID = Moto.objects.last().ID_Moto
    except AttributeError:
        lastID = 0
    pageTitle = "Moto"
    if FactureMoto.objects.last() is not None:
        lastFacture = FactureMoto.objects.last().Num_Facture
    else:
        lastFacture  = 0
    if BLMoto.objects.last() is not None:
        lastBL = BLMoto.objects.last().Num_BL
    else:
        lastBL = 0
    context = {
        'motos': motos,
        'count': count,
        'pageTitle': pageTitle,
        'lastID': lastID,
        'lastFacture': lastFacture,
        'lastBL': lastBL}
    return render(request, 'moto/index.html',context)

@login_required(login_url='loginPage')
def createMoto(request):
    pageTitle = "Moto"
    group = None
    if request.user.groups.exists():
        group = request.user.groups.all()[0].name
    if request.method == 'POST':
        if group == 'commercial':
            form = MotoFormCom(request.POST, request.FILES)
        else:
            form = MotoForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'create')
            lastmoto = Moto.objects.last()
            print("pk = ", lastmoto.pk)
            return redirect('editMoto', pk=lastmoto.pk)
            # editMoto(request, pk=lastmoto.pk)
        else:
            messages.error(request, 'error')
    else:
        if group == 'commercial':
            form = MotoFormCom()
        else:
            form = MotoForm()

    return render(request, 'moto/create.html', {'form': form, 'pageTitle': pageTitle})


def archiveMoto(request):
    if request.is_ajax and request.method == 'GET':
        ids = request.GET.get("id", None)
        print("id = ", ids)
        moto = get_object_or_404(Moto, pk=ids)
        print("moto = ", moto)
        moto.archive = True
        moto.save()
        print("saved")
        # pageTitle = "Moto n°"+str(id)
        messages.success(request, "success")
    return JsonResponse({'archiveOK': 'archiveOK'}, status=200)


@login_required(login_url='loginPage')
def editMoto(request, pk=None):
    moto = get_object_or_404(Moto, pk=pk)
    ids = moto.ID_Moto
    print(f"Edit moto {ids}")
    pk = moto.pk
    pageTitle = "Moto n°" + str(ids)
    group = None
    if request.user.groups.exists():
        group = request.user.groups.all()[0].name
    if request.method == 'POST':
        if group == 'commercial':
            form = MotoFormCom(request.POST, request.FILES, instance=moto)
        else:
            form = MotoForm(request.POST, request.FILES, instance=moto)

        if form.is_valid():
            form.save()
            messages.success(request, 'success')
        else:
            messages.error(request, 'error')
    else:
        if group == 'commercial':
            form = MotoFormCom(instance=moto)
        else:
            form = MotoForm(instance=moto)
    context = {
        'form': form,
        'pageTitle': pageTitle,
        'id': ids,
        'pk': pk}
    return render(request, 'moto/edit.html', context)

@login_required(login_url='loginPage')
def detailsMoto(request, pk=None):
    print("Edit moto")
    moto = get_object_or_404(Moto, pk=pk)
    ids = moto.ID_Moto
    pageTitle = "Moto n°" + str(id)
    group = None
    if request.user.groups.exists():
        group = request.user.groups.all()[0].NameError
    
    if group == 'commercial':
        form = MotoFormCom(instance=moto)
    else:
        form = MotoForm(instance=moto)
    context = {
        'form': form,
        'pageTitle': pageTitle,
        'id': ids
    }
    return render(request, 'moto/detail.html', context)

@login_required(login_url='loginPage')
def deleteMoto(request, pk=None):
    moto = get_object_or_404(Moto, pk=pk)
    if request.method == 'POST':
        moto.delete()
        messages.success(request, 'delete')
        motos_all = Moto.objects.all()
        for i in range(len(motos_all)):
            motos_all[i].ID_Moto = i + 1
            motos_all[i].save()
        return HttpResponseRedirect('/moto/')

    return render(request, 'moto/delete.html', {'moto': moto})


@sync_to_async
def Chart_Hebdo(request):
    datehebdo = request.GET.get("datehebdo", None).split("-")
    year = datehebdo[0]
    month = datehebdo[1]
    date = datehebdo[2]
    date_string = year+"/"+month+"/"+date
    today = dt.strptime(date_string, "%Y/%m/%d")
    data_Week = {}
    for j in range(7):
        daty_feno = today.date()-timedelta(today.weekday()) + timedelta(j)
        androany = str(daty_feno).split("-")[2]
        volana = today.date().strftime('%B').capitalize()
        daty = androany+" "+volana
        data_Week[daty] = Moto.objects.filter(date_vente=daty_feno).count()
    return JsonResponse({
        "date": list(data_Week.keys()),
        "data": list(data_Week.values())
    })


@sync_to_async
def Chart_Monthly(request):
    dateMensuel = request.GET.get("dateMensuel", None).split("-")
    year = dateMensuel[0]
    month = dateMensuel[1]
    date_string = year+"/"+month
    today = dt.strptime(date_string, "%Y/%m")
    data_month = {}
    for i in range(calendar.monthrange(today.year, today.month)[1]):
        daty_feno = today.date()-timedelta(today.date().day-1)+timedelta(i)
        androany = str(daty_feno).split("-")[2] #+ " " + today.date().strftime('%B').capitalize()
        data_month[androany] = Moto.objects.filter(date_vente=daty_feno).count()
    return JsonResponse({
        "jourMois": list(data_month.keys()),
        "nombMois": list(data_month.values())
    })


@sync_to_async
def Chart_Year_Monthly(request):
    yearChange = request.GET.get("yearChange",None)
    taona = dt.strptime(yearChange, "%Y")
    Mensuel = {}
    for M in range(12):
        counter = 0
        for j in range(calendar.monthrange(taona.year, taona.month)[1]):
            daty = taona.date()+timedelta(j)
            counter += Moto.objects.filter(date_vente=daty).count()
        Mensuel[taona.strftime('%B').capitalize()] = counter
        taona = taona+timedelta(j+1)
    return JsonResponse({
        "month": list(Mensuel.keys()),
        "datamonth": list(Mensuel.values())
    })    

@sync_to_async
def Chart_Year_Trimestre(request):
    yearChange = request.GET.get("yearChange",None)
    taona = dt.strptime(yearChange, "%Y")
    Trimestriel = {}
    Trim_Name = ["Janvier - Fevrier - Mars","Avril - Mai - Juin","Juillet - Aout - Septembre","Octobre - Novembre - Decembre"]
    for t in range(4):
        counter = 0
        for p in range(3):
            for m in range(calendar.monthrange(taona.year, taona.month)[1]):
                daty = taona.date()+timedelta(m)
                counter += Moto.objects.filter(date_vente=daty).count()
            taona = taona+timedelta(m+1)
        Trimestriel[Trim_Name[t]] = counter
    return JsonResponse({
        "trimestre":list(Trimestriel.keys()),
        "datatrimestre": list(Trimestriel.values())
    })


@sync_to_async
def Chart_Year_Semestre(request):
    yearChange = request.GET.get("yearChange",None)
    taona = dt.strptime(yearChange, "%Y")
    Semestriel = {}
    Sem_Name = ["Janvier - Fevrier - Mars - Avril - Mai - Juin","Juillet - Aout - Septembre - Octobre - Novembre - Decembre"]
    for t in range(2):
        counter = 0
        for p in range(6):
            for m in range(calendar.monthrange(taona.year, taona.month)[1]):
                daty = taona.date()+timedelta(m)
                counter += Moto.objects.filter(date_vente=daty).count()
            taona = taona+timedelta(m+1)
        Semestriel[Sem_Name[t]] = counter
    return JsonResponse({
        "semestre":list(Semestriel.keys()),
        "datasemestre": list(Semestriel.values())
    })
@sync_to_async    
def Date_Range(request):
    dateEntree = request.GET.get("dateEntree",None)    
    dateFin = request.GET.get("dateFin",None)
    if len(dateEntree) == 0 and len(dateFin) == 0:
        lisitra = Moto.objects.all()
    else:
        lisitra = Moto.objects.filter(date_vente__range=[dateEntree,dateFin]).values()
    lisitra = list(lisitra)
    return JsonResponse(lisitra)
    
    
@api_view(['GET']) 
def Date_Range_API(request):
    dateEntree = request.GET.get("dateEntree",None)    
    dateFin = request.GET.get("dateFin",None)
    if len(dateEntree) == 0 and len(dateFin) == 0:
        lisitra = Moto.objects.all()
    else:
        lisitra = Moto.objects.filter(date_vente__range=[dateEntree,dateFin]).values()
    lisitra = list(lisitra)
    return Response(lisitra)


@api_view(['GET'])   
def getMotos(request):
    Motos = Moto.objects.all()
    serializer = MotoSerializer(Motos,many=True)
    return Response(serializer.data)


@sync_to_async
@api_view(['GET']) 
def Chart_Hebdo_API(request):
    dateEntree = request.GET.get("dateEntree",None)    
    dateFin = request.GET.get("dateFin",None)
    data_Week = {}
    print(f"dateEntree: {dateEntree}, type: {type(dateEntree)}")
    start = dt.strptime(dateEntree, "%Y/%m/%d")
    end = dt.strptime(dateFin, "%Y/%m/%d")
    delta = end - start  # as timedelta
    days = [start + timedelta(days=i) for i in range(delta.days + 1)]
    for day in days:
        data_Week[day] = list(Moto.objects.filter(date_vente=day).values())
    print(f"type data_Week: {type(data_Week)}")
    return Response({
        "date": list(data_Week.keys()),
        "data": list(data_Week.values()),
        "nb": [len(i) for i in data_Week.values()]
    })

@sync_to_async
@api_view(['GET'])
def Chart_Monthly_API(request):
    dateMensuel = request.GET.get("month", None).split("-")
    year = dateMensuel[0]
    month = dateMensuel[1]
    date_string = year+"/"+month
    today = dt.strptime(date_string, "%Y/%m")
    print(f"today : {today}")
    data_month = {}
    for i in range(calendar.monthrange(today.year, today.month)[1]):
        daty_feno = today.date()-timedelta(today.date().day-1)+timedelta(i)
        data_month[daty_feno] =(Moto.objects.filter(date_vente=daty_feno).values())
    return Response({
        "date": list(data_month.keys()),
        "data": list(data_month.values()),
        "nb": [len(i) for i in data_month.values()]
    })    

@sync_to_async
@api_view(['GET'])
def StockLevel_API(request):
    stock = Moto.objects.all().filter(date_vente = None).count()
    return Response(stock)


@sync_to_async
@api_view(['GET'])
def Last_Facture_API(request):
    last_facture = Moto.objects.aggregate(Max('num_sur_facture'))["num_sur_facture__max"]
    return Response(last_facture)

@sync_to_async
@api_view(['GET'])
def Last_BL_API(request):
    numBLlast = Moto.objects.aggregate(
    Max('num_BL'))["num_BL__max"]
    return Response(numBLlast)

@sync_to_async
@api_view(['GET'])
def Edit_Moto_API(request, pk=None):
    numBLlast = Moto.objects.aggregate(
    Max('num_BL'))["num_BL__max"]
    return Response(numBLlast)

@sync_to_async
@api_view(['GET'])
def IDLast_API(request):
    if Moto.objects.last() is not None:
        idMotoLast = Moto.objects.last().ID_Moto
    else:
        idMotoLast = 0
    return Response(idMotoLast)