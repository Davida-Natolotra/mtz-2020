# Generated by Django 3.2 on 2022-08-07 18:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moto', '0009_rename_vendeur_moto_fournisseur'),
    ]

    operations = [
        migrations.AlterField(
            model_name='moto',
            name='date_facture',
            field=models.DateField(blank=True, null=True),
        ),
    ]
