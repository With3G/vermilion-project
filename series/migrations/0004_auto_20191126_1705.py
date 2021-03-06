# Generated by Django 2.2.7 on 2019-11-26 16:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('opciones', '0005_staff'),
        ('series', '0003_auto_20191124_1555'),
    ]

    operations = [
        migrations.AddField(
            model_name='serie',
            name='staff',
            field=models.ManyToManyField(to='opciones.Staff', verbose_name='Reparto'),
        ),
        migrations.AlterField(
            model_name='serie',
            name='created_by',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Artist', verbose_name='Creada por'),
        ),
    ]
