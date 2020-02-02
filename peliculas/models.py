from django.db import models
from opciones.models import Category, Artist, Produced, Country, Genre, Extension, Resolution, Director, Guion, Music, Staff, Language
from ckeditor.fields import RichTextField

class Pelicula(models.Model):
    # Ficha técnica:
    category = models.ForeignKey(Category, on_delete = models.CASCADE, verbose_name = 'Categoría')
    title = models.CharField(verbose_name = 'Título', max_length = 150)
    original_title = models.CharField(verbose_name = 'Título original', max_length = 150)
    poster = models.ImageField(verbose_name = 'Poster', upload_to = 'peliculas/posters/')
    director = models.ForeignKey(Director, on_delete = models.CASCADE, verbose_name = 'Director')
    guion = models.ForeignKey(Guion, on_delete = models.CASCADE, verbose_name = 'Guión')
    music = models.ForeignKey(Music, on_delete = models.CASCADE, verbose_name = 'Música')
    staff = models.ManyToManyField(Staff, verbose_name = 'Reparto')
    production = models.ForeignKey(Produced, on_delete = models.CASCADE, verbose_name = 'Producción')
    # Datos:
    country = models.ForeignKey(Country, on_delete = models.CASCADE, verbose_name = 'Pais')
    year = models.DateField(verbose_name = 'Fecha de estreno')
    genre = models.ManyToManyField(Genre, verbose_name = 'Género')

    plot = RichTextField(verbose_name = 'Sipnosis')

    screen_one = models.ImageField(verbose_name = 'Captura uno', upload_to = 'peliculas/posters/')
    screen_two = models.ImageField(verbose_name = 'Captura dos', upload_to = 'peliculas/posters/')
    screen_three = models.ImageField(verbose_name = 'Captura tres', upload_to = 'peliculas/posters/')
    screen_four = models.ImageField(verbose_name = 'Captura cuatro', upload_to = 'peliculas/posters/')


    # Archivo:
    duration = models.TimeField(verbose_name = 'Duración')
    encoding = models.ForeignKey(Extension, on_delete = models.CASCADE, verbose_name = 'Formato de video')
    resolution = models.ForeignKey(Resolution, on_delete = models.CASCADE, verbose_name = 'Resolución')
    peso = models.IntegerField(verbose_name = 'Peso por archivo')
    languages = models.ForeignKey(Language, on_delete = models.CASCADE, verbose_name = 'Idioma')

    as_downloaded = models.BooleanField(verbose_name = 'Subido', default = False)
    link = models.URLField(verbose_name = 'Enlace de descarga')

    created = models.DateTimeField(verbose_name = 'Fecha de creación', auto_now_add = True)
    updated = models.DateTimeField(verbose_name = 'Fecha de actualización', auto_now = True)

    class Meta:
        verbose_name = 'Pelicula'
        verbose_name_plural = 'Peliculas'
        ordering = ['title', 'year']

    def __str__(self):
        return self.title

