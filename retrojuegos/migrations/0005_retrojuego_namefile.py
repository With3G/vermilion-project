# Generated by Django 3.0.1 on 2020-02-22 12:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('retrojuegos', '0004_retrojuego_logo'),
    ]

    operations = [
        migrations.AddField(
            model_name='retrojuego',
            name='namefile',
            field=models.CharField(default=1, max_length=150, verbose_name='Nombre del archivo ejecutable'),
            preserve_default=False,
        ),
    ]
