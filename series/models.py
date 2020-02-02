from django.db import models
from ckeditor.fields import RichTextField
from opciones.models import Artist, Category, Genre, Studio, Extension, Resolution, Staff, Language

class Serie(models.Model):
    title = models.CharField(verbose_name = 'Título', max_length = 150)
    original_title = models.CharField(verbose_name = 'Título original', max_length = 150, blank = True)
    poster = models.ImageField(verbose_name = 'Poster', upload_to = 'series/posters/')
    created_by = models.ForeignKey(Artist, on_delete = models.CASCADE, verbose_name = 'Creada por')
    category = models.ForeignKey(Category, on_delete = models.CASCADE, verbose_name = 'Categoría')
    genre = models.ManyToManyField(Genre, verbose_name = 'Género')
    studio = models.ForeignKey(Studio, on_delete = models.CASCADE, verbose_name = 'Estudio')
    first_emission = models.DateField(verbose_name = 'Primera Emisión')
    last_emission = models.DateField(verbose_name = 'Última Emisión')
    episodes = models.IntegerField(verbose_name = 'Episodios')
    seassons = models.IntegerField(verbose_name = 'Temporadas')
    staff = models.ManyToManyField(Staff, verbose_name = 'Reparto')

    plot = RichTextField(verbose_name = 'Sipnosis')

    # Archivo:
    duration = models.TimeField(verbose_name = 'Duración por episodio')
    encoding = models.ForeignKey(Extension, on_delete = models.CASCADE, verbose_name = 'Formato de video')
    resolution = models.ForeignKey(Resolution, on_delete = models.CASCADE, verbose_name = 'Resolución')
    peso = models.IntegerField(verbose_name = 'Peso por archivo')
    languages = models.ForeignKey(Language, on_delete = models.CASCADE, verbose_name = 'Idioma')

    screen_one = models.ImageField(verbose_name = 'Captura uno', upload_to = 'series/posters/')
    screen_two = models.ImageField(verbose_name = 'Captura dos', upload_to = 'series/posters/')
    screen_three = models.ImageField(verbose_name = 'Captura tres', upload_to = 'series/posters/')
    screen_four = models.ImageField(verbose_name = 'Captura cuatro', upload_to = 'series/posters/')

    as_downloaded = models.BooleanField(verbose_name = 'Subido', default = False)
    link = models.URLField(verbose_name = 'Enlace de descarga')

    created = models.DateTimeField(verbose_name = 'Fecha de creación', auto_now_add = True)
    updated = models.DateTimeField(verbose_name = 'Fecha de actualización', auto_now = True)

    class Meta:
        verbose_name = 'Serie'
        verbose_name_plural = 'Series'
        ordering = ['title', 'first_emission']

    def __str__(self):
        return self.title

