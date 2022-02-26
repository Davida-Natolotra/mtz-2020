from django.shortcuts import render
from django.http import JsonResponse
from django.db.models import Max
from asgiref.sync import sync_to_async
# from accounts.urls import *
from django.contrib.auth.decorators import login_required
from accounts.decorators import admin_only
from moto.models import Moto


# Create your views here.

@login_required(login_url='loginPage')
@admin_only
def home(request):
    topbar(request)
    pageTitle = "MTZ Admin"
    return render(request, 'base/home.html', {'pageTitle': pageTitle})

@login_required(login_url='loginPage')
def main(request):
    return render(request, 'base/main.html')

@sync_to_async
def NumFacture():
    numFactureLast = Moto.objects.aggregate(Max('num_sur_facture'))["num_sur_facture__max"]
    if numFactureLast is None:
        numFactureLast = 0
    
    return numFactureLast

@sync_to_async
def NumBL():
    numBLlast = Moto.objects.aggregate(
    Max('num_BL'))["num_BL__max"]
    if numBLlast is None:
        numBLlast = 0
    return numBLlast


@sync_to_async
def IDLast():
    if Moto.objects.last() is not None:
        idMotoLast = Moto.objects.last().ID_Moto
    else:
        idMotoLast = 0
    return idMotoLast

@sync_to_async
def StockLevel():
    saved = len(Moto.objects.all())
    stock = saved
    if saved != 0 :
        for i in range(1, saved+1):
            if Moto.objects.get(ID_Moto=i).num_sur_facture is not None or Moto.objects.get(ID_Moto=i).num_BL is not None:
                stock = stock - 1
    return stock


async def topbar(request):
    if request.is_ajax and request.method == 'GET':
        # ExportateurName = request.GET.get("ExportateurName",None)
        # print("ExportateurName = ",ExportateurName)
        # ExportateurIdBSC = Exportateur.objects.get(nom=ExportateurName).ID_BSC
        # print("ExportateurIdBSC = ",ExportateurIdBSC)
        # operations = Operation.objects.all()
        notification = []
        counter = 0
        # numFactureLast = FactureMoto.objects.last().Num_Facture
        numFactureLast = await NumFacture()
        numBLlast = await NumBL()
        idMotoLast = await IDLast()
        stock = await StockLevel()

        # for op in operations:
        #     if not op.Prep_Full:
        #         notification.append(op.Reference_Reception)
        #         counter = counter + 1
        return JsonResponse(
            {"notification": notification, 'counter': counter, 'numFactureLast': numFactureLast, 'numBLlast': numBLlast,
             'idMotoLast': idMotoLast, 'stock': stock}, status=200)
