from rest_framework import serializers
from .models import Moto

class MotoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Moto
        fields = '__all__'

class Geeks(object):
    def __init__(self, dictionary):
        self.dict = dictionary
 
# create a serializer
class GeeksSerializer(serializers.Serializer):
    # initialize fields
    dictionary = serializers.DictField(
    child = serializers.CharField())