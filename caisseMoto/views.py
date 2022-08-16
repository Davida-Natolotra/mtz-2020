from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from asgiref.sync import sync_to_async
from .models import CaisseMoto, Solde
from .serializers import CaisseMotoSerializer, SoldeSerializer

@sync_to_async
@api_view(['GET'])
def list_all_caisse(request):
    Caisses = CaisseMoto.objects.all()
    serializer = CaisseMotoSerializer(Caisses, many=True)
    return Response(serializer.data)

@sync_to_async
@api_view(['GET'])
def get_caisse(request, pk=None):
    caisse = CaisseMoto.objects.get(pk=pk)
    serializer = CaisseMotoSerializer(caisse,many=True)
    return Response(serializer.data)

@sync_to_async
@api_view(['PUT'])
def update_caisse_moto(request, pk):
    caisse = CaisseMoto.objects.get(id=pk)
    serializer = CaisseMotoSerializer(instance=caisse, data=request.data)
    if serializer.is_valid():
        serializer.save()
        Caisses = CaisseMoto.objects.all()
        serializer = CaisseMotoSerializer(Caisses, many=True)
        return Response(serializer.data)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@sync_to_async
@api_view(['DELETE'])
def delete_caisse_moto(request, pk=None):
    caisse = CaisseMoto.objects.get(id=pk)
    caisse.delete()
    Caisses = CaisseMoto.objects.all()
    serializer = CaisseMotoSerializer(Caisses, many=True)
    return Response(serializer.data)

@sync_to_async
@api_view(['POST'])
def create_caisse_moto(request):
    serializer = CaisseMotoSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        Caisses = CaisseMoto.objects.all()
        serializer = CaisseMotoSerializer(Caisses, many=True)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@sync_to_async
@api_view(['GET'])
def get_solde_all(request):
    solde = Solde.objects.all()
    serializer = SoldeSerializer(solde, many=True)
    return Response(serializer.data[0])

@sync_to_async
@api_view(['PUT'])
def update_solde_moto(request):
    solde = Solde.objects.last()
    serializer = SoldeSerializer(instance=solde,data=request.data)
    if serializer.is_valid():
        serializer.save()
        print('saved')
        solde = Solde.objects.all()
        serializer = SoldeSerializer(solde, many=True)
        return Response(serializer.data[0])
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)