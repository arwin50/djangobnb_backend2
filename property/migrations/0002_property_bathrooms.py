# Generated by Django 5.1.4 on 2025-01-07 10:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('property', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='property',
            name='bathrooms',
            field=models.IntegerField(default=1),
        ),
    ]
