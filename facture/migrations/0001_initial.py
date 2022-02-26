# Generated by Django 3.1.6 on 2021-02-14 14:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('operation', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='BLMoto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Num_BL', models.IntegerField(default=0, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='FactureMoto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Num_Facture', models.IntegerField(default=0, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='FactureOperation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('OT_Honoraire', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Autres_Montant', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('BAD_Montant', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Overstay_Montant', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Surestaries_Montant', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Debarquement', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Magasinage_Montant', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Droit_Compromis', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Amende_Montant', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('OV_Montant', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('OV_Docker', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Montant_Fret', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Immobilisation', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Num_Facture', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Nom_Client', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Adresse_Client', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Contact_Client', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('email_client', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Date_Facture', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('SousTotal', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Tax', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('TotalFacture', models.DecimalField(blank=True, decimal_places=2, max_digits=20, null=True)),
                ('Ref', models.IntegerField(blank=True, null=True)),
                ('idOp', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='operation.operation')),
            ],
        ),
    ]
