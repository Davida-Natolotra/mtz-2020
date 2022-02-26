from django.db import models

# Create your models here.
class Compagnie(models.Model):
    nomCompagnie = models.CharField(max_length=50)
    adresseTana = models.CharField(max_length=50)
    adresseTamatave = models.CharField(max_length=50)
    email1 = models.EmailField()
    email2 = models.EmailField()
    email3 = models.EmailField()
    contact = models.CharField(max_length=50)

    def __str__(self):
        return self.nomCompagnie
