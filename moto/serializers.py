from rest_framework import serializers
from .models import Moto

class MotoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Moto
        fields = '__all__'
        
    def to_internal_value(self, data):
        for key, value in data.items():
            if value == "":
                data[key] = None    
        return super(MotoSerializer, self).to_internal_value(data)

class Geeks(object):
    def __init__(self, dictionary):
        self.dict = dictionary
 
# create a serializer
class GeeksSerializer(serializers.Serializer):
    # initialize fields
    dictionary = serializers.DictField(
    child = serializers.CharField())