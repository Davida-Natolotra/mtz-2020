# Generated by Django 3.2 on 2022-08-16 03:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('caisseMoto', '0003_alter_caissemoto_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='caissemoto',
            name='is_moto',
            field=models.BooleanField(blank=True, default=False),
        ),
    ]
