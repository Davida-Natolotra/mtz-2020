# Generated by Django 3.2 on 2022-08-19 15:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('caisseMoto', '0012_alter_caissemoto_is_depense'),
    ]

    operations = [
        migrations.AlterField(
            model_name='caissemoto',
            name='id_moto',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
