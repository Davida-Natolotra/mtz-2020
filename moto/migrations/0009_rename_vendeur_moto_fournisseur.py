# Generated by Django 3.2 on 2022-08-06 16:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('moto', '0008_auto_20220806_0750'),
    ]

    operations = [
        migrations.RenameField(
            model_name='moto',
            old_name='vendeur',
            new_name='fournisseur',
        ),
    ]
