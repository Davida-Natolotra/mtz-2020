import calendar
from asgiref.sync import sync_to_async
from moto.models import Moto
from datetime import datetime as dt, timedelta
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .serializers import MotoSerializer
from django.db.models import Max
from num2words import num2words
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated



@sync_to_async
@api_view(['GET']) 
def Chart_Year_Trimestre_API(request):
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
    return Response({
        "trimestre":list(Trimestriel.keys()),
        "datatrimestre": list(Trimestriel.values())
    })


@sync_to_async
@api_view(['GET']) 
def Chart_Year_Semestre_API(request):
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
    return Response({
        "semestre":list(Semestriel.keys()),
        "datasemestre": list(Semestriel.values())
    })

    
@sync_to_async    
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

@sync_to_async
@api_view(['GET'])   
def getMotos(request):
    Motos = Moto.objects.all()
    serializer = MotoSerializer(Motos,many=True)
    return Response(serializer.data)

@sync_to_async
@api_view(['GET'])   
def detailMoto(request,pk):
    moto = Moto.objects.get(id=pk)
    serializer = MotoSerializer(instance=moto,many=False)
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
def Vente_Today_API(request):
    today = dt.now()
    print(f"today : {today}")
    data_now =(Moto.objects.filter(date_vente=today).values())
    return Response({
        "date": today,
        "data": list(data_now.values()),
        "nb": [len(i) for i in data_now.values()]
    })    

@sync_to_async
@api_view(['GET'])
def StockLevel_API(request):
    stock = Moto.objects.all().filter(date_vente = None)
    stock_level = stock.count()
    showroom = stock.filter(localisation="Showroom")
    depot = stock.filter(localisation="Dépot")
    pShowroom = round(showroom.count()*100/stock_level,2)
    pDepot = round(depot.count()*100/stock_level,2)
    return Response({"number":stock_level,"showroom":showroom.count(),"depot":depot.count(),"pShowroom":pShowroom,"pDepot":pDepot})


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

@sync_to_async
@api_view(['GET'])
def total2word_API(request):
    number = request.GET.get("number", None)
    print(f"number ={number}")
    word = num2words(number,lang='fr')
    word = word.replace("-"," ")
    return Response(word)    

@sync_to_async()
@api_view(['POST'])
def add_moto_API(request):
    serializer = MotoSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@sync_to_async()
@api_view(['PUT'])
def update_moto_API(request,pk):
    moto = Moto.objects.get(id=pk)
    serializer = MotoSerializer(instance = moto,data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@sync_to_async()
@api_view(['PUT'])
def cancel_facture_API(request,pk):
    moto = Moto.objects.get(id=pk)
    request.data._mutable = True
    serializer = MotoSerializer(instance = moto,data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@sync_to_async()
@api_view(['DELETE'])
def delete_moto_API(request,pk):
    moto = Moto.objects.get(id=pk)
    moto_ID = moto.ID_Moto
    moto.delete()
    motos_diff = Moto.objects.filter(ID_Moto__gte=moto_ID)
    for i in range(len(motos_diff)):
        motos_diff[i].ID_Moto = moto_ID +i
        motos_diff[i].save()
    return Response("Deleted successfully")
 
 
 
@sync_to_async()
@api_view(['GET'])
def reset_ID_moto_API(request):
    moto_all = Moto.objects.all()
    for i in range(len(moto_all)):   
        moto_all[i].ID_Moto = i +1
        moto_all[i].save()
    return Response("Reset successfully")
     
@sync_to_async()
@api_view(['GET']) 
def get_vente_API(request):
    vente = Moto.objects.filter(date_vente__isnull=False).values()
    return Response(vente)   

class UserView(APIView):
    permission_classes = (IsAuthenticated,)
    
    def get(self, request):
        displayName = request.user.username       
        userid = request.user.id
        role = request.user.groups.all()[0]
        content = { 'displayName': displayName,'id': userid, 'role': str(role) }
       
        return Response(content)