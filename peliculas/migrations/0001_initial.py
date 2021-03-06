# Generated by Django 2.2.7 on 2019-11-26 16:00

import ckeditor.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('opciones', '0004_director_guion_music'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pelicula',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=150, verbose_name='Título')),
                ('original_title', models.CharField(max_length=150, verbose_name='Título original')),
                ('poster', models.ImageField(upload_to='peliculas/posters/', verbose_name='Poster')),
                ('year', models.DateField(verbose_name='Fecha de estreno')),
                ('plot', ckeditor.fields.RichTextField(verbose_name='Sipnosis')),
                ('screen_one', models.ImageField(upload_to='peliculas/posters/', verbose_name='Captura uno')),
                ('screen_two', models.ImageField(upload_to='peliculas/posters/', verbose_name='Captura dos')),
                ('screen_three', models.ImageField(upload_to='peliculas/posters/', verbose_name='Captura tres')),
                ('screen_four', models.ImageField(upload_to='peliculas/posters/', verbose_name='Captura cuatro')),
                ('duration', models.IntegerField(verbose_name='Duración por episodio')),
                ('peso', models.IntegerField(verbose_name='Peso por archivo')),
                ('as_downloaded', models.BooleanField(default=False, verbose_name='Subido')),
                ('link', models.URLField(verbose_name='Enlace de descarga')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Fecha de actualización')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Category', verbose_name='Categoría')),
                ('country', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Country', verbose_name='Pais')),
                ('director', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Director', verbose_name='Director')),
                ('encoding', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Extension', verbose_name='Formato de video')),
                ('genre', models.ManyToManyField(to='opciones.Genre', verbose_name='Género')),
                ('guion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Guion', verbose_name='Guión')),
                ('music', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Music', verbose_name='Música')),
                ('production', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Produced', verbose_name='Producción')),
                ('resolution', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='opciones.Resolution', verbose_name='Resolución')),
                ('staff', models.ManyToManyField(to='opciones.Artist', verbose_name='Reparto')),
            ],
            options={
                'verbose_name': 'Pelicula',
                'verbose_name_plural': 'Peliculas',
                'ordering': ['title', 'year'],
            },
        ),
    ]
