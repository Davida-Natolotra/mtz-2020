# Generated by Django 3.2 on 2022-07-30 12:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moto', '0005_auto_20220729_1346'),
    ]

    operations = [
        migrations.AddField(
            model_name='moto',
            name='vendeur',
            field=models.CharField(blank=True, max_length=50),
        ),
    ]
