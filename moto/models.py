from django.db import models

# Create your models here.
class Moto(models.Model):
    ID_Moto = models.IntegerField(blank=True,null=True,unique=True)
    date_entree = models.DateField(auto_now=False,blank=True,null=True)
    nom_moto = models.CharField(max_length=50,blank=True,null=True)
    num_moteur = models.CharField(max_length=50,blank=True,null=True,unique=True)
    FRN = models.CharField(max_length=50,blank=True,null=True)
    PA = models.DecimalField(null=True,blank=True,decimal_places=2,max_digits=20)
    PV = models.DecimalField(null=True,blank=True,decimal_places=2,max_digits=20)
    date_vente = models.DateField(auto_now=False,null=True,blank=True)
    nom_client_1 = models.CharField(max_length=50, blank=True,null=True)
    CIN_Num_Client_1 = models.CharField(max_length=50, blank=True,null=True)
    PJ_CIN_Client_1_recto = models.ImageField(blank=True,null=True,upload_to='images')
    PJ_CIN_Client_1_verso = models.ImageField(blank=True,null=True,upload_to='images')
    tel_client_1 = models.CharField(max_length=50, blank=True,null=True)
    adresse_client_1 = models.CharField(max_length=50, blank=True,null=True)
    num_BL = models.IntegerField(null=True,unique=True)
    num_sur_facture = models.IntegerField(null=True,unique=True)
    PJ_Facture = models.FileField(blank=True, null=True, upload_to='images')
    nom_client_2 = models.CharField(max_length=50, blank=True,null=True)
    tel_client_2 = models.CharField(max_length=50, blank=True,null=True)
    adresse_client_2 = models.CharField(max_length=50, blank=True,null=True)
    CIN_Num_Client_2 = models.CharField(max_length=50, blank=True,null=True)
    PJ_CIN_Client_2_recto = models.ImageField(blank=True,null=True,upload_to='images')
    PJ_CIN_Client_2_verso = models.ImageField(blank=True,null=True,upload_to='images')
    montant_reparation = models.DecimalField(null=True,blank=True,decimal_places=2,max_digits=20)
    motif_reparation = models.CharField(max_length=50,blank=True,null=True)
    commercial = models.CharField(max_length=50,blank=True,null=True)
    volume_moteur = models.CharField(max_length=50,blank=True,null=True)
    PU_HT = models.DecimalField(null=True,blank=True,decimal_places=2,max_digits=20)
    TVA = models.DecimalField(null=True,blank=True,decimal_places=2,max_digits=20)
    PT = models.DecimalField(null=True,blank=True,decimal_places=2,max_digits=20)
    montant_lettre = models.CharField(max_length=50,blank=True)
    Ref = models.IntegerField(blank=True, null=True)
    archive = models.BooleanField(default=False)
    carte_rose = models.CharField(max_length=50,blank=True,null=True)
    carte_grise = models.CharField(max_length=50,blank=True,null=True)
    model_no_1 = models.CharField(max_length=50,blank=True,null=True)
    magasin = models.CharField(max_length=50,blank=True,null=True)
    date_facture = models.DateField(auto_now = False, null = True,blank=True)
    date_BL = models.DateField(auto_now = False, null = True)
    localisation = models.CharField(max_length=50,blank=True,null=True)
    date_arrivee = models.DateField(auto_now = False, null = True)
    fournisseur = models.CharField(max_length=50,blank=True,null=True)
    
    def __str__(self):
        return self.nom_moto
