from django.db import models
from moto.models import Moto
# Create your models here.


class CaisseMoto(models.Model):
    libellee = models.CharField(max_length=50)
    date = models.DateField(auto_now=False, null=True,blank=True)
    depense = models.DecimalField(null=True,default="0",decimal_places=2,max_digits=20)
    recette = models.DecimalField(null=True,default="0",decimal_places=2,max_digits=20)
    PJ = models.FileField(blank=True, upload_to='images')
    is_depense = models.BooleanField(default=False, blank=True)
    is_moto = models.BooleanField(default=False, blank=True)
    id_moto = models.ForeignKey(Moto, on_delete=models.CASCADE, null=True, blank=True)

    def __str__(self):
        return self.libellee

class Solde(models.Model):
    solde_initial = models.DecimalField(null=True,default=0,decimal_places=2,max_digits=20)
    solde_actuel = models.DecimalField(null=True,default=0,decimal_places=2,max_digits=20)
