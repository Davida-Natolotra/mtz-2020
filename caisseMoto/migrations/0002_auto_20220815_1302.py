# Generated by Django 3.2 on 2022-08-15 13:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('caisseMoto', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='solde',
            name='soldeActuel',
        ),
        migrations.RemoveField(
            model_name='solde',
            name='soldeInitial',
        ),
        migrations.AddField(
            model_name='solde',
            name='solde_actuel',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=20, null=True),
        ),
        migrations.AddField(
            model_name='solde',
            name='solde_initial',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=20, null=True),
        ),
    ]
