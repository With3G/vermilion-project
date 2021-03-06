# Generated by Django 2.2.7 on 2019-11-26 17:45

import ckeditor.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('opciones', '0005_staff'),
    ]

    operations = [
        migrations.CreateModel(
            name='PCgames',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=150, verbose_name='Título')),
                ('poster', models.ImageField(upload_to='videojuegos/caratula', verbose_name='Carátula')),
                ('release', models.DateField(verbose_name='Fecha de lanzamiento')),
                ('players', models.CharField(choices=[('1', '1'), ('2', '2'), ('3', '3'), ('4', '4'), ('5', 'Masivo')], max_length=10, verbose_name='Jugadores')),
                ('size', models.IntegerField(verbose_name='Tamaño (MB)')),
                ('plot', ckeditor.fields.RichTextField(verbose_name='Sipnosis')),
                ('screen_one', models.ImageField(upload_to='videojuegos/capturas', verbose_name='Captura 1')),
                ('screen_two', models.ImageField(upload_to='videojuegos/capturas', verbose_name='Captura 2')),
                ('screen_three', models.ImageField(upload_to='videojuegos/capturas', verbose_name='Captura 3')),
                ('screen_four', models.ImageField(upload_to='videojuegos/capturas', verbose_name='Captura 4')),
                ('as_downloaded', models.BooleanField(default=False, verbose_name='Subido')),
                ('download_link', models.URLField(blank=True, verbose_name='Link de Descarga')),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
                ('developer', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Developer', verbose_name='Desarrollado por')),
                ('director', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Director', verbose_name='Director')),
                ('genre', models.ManyToManyField(to='opciones.Genre', verbose_name='Género')),
                ('guion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Guion', verbose_name='Guión')),
                ('language', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Language', verbose_name='Idioma')),
                ('music', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Music', verbose_name='Banda sonora')),
                ('produced', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Produced', verbose_name='Producido por')),
            ],
            options={
                'verbose_name': 'Videojuego PC',
                'verbose_name_plural': 'Videojuegos de PC',
                'ordering': ['title', 'release'],
            },
        ),
    ]
