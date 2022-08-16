from rest_framework import serializers
from .models import CaisseMoto, Solde

class CaisseMotoSerializer(serializers.ModelSerializer):
    class Meta:
        model = CaisseMoto
        fields = '__all__'
        
    def to_internal_value(self, data):
        for key, value in data.items():
            if value == "":
                data[key] = None    
        return super().to_internal_value(data)

class SoldeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Solde
        fields = '__all__'
        
    def to_internal_value(self, data):
        for key, value in data.items():
            if value == "":
                data[key] = None    
        return super().to_internal_value(data)