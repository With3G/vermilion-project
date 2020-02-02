from django.db import models
from opciones.models import Music, Produced
from ckeditor.fields import RichTextField

class MusicGenre(models.Model):
    genre = models.CharField(verbose_name = 'Género', max_length = 100)

    created = models.DateTimeField(verbose_name = 'Fecha de creación', auto_now_add = True)
    updated = models.DateTimeField(verbose_name = 'Fecha de actualización', auto_now = True)

    class Meta:
        verbose_name = 'Género Musical'
        verbose_name_plural = 'Géneros Musicales'
        ordering = ['genre']
    
    def __str__(self):
        return self.genre

class TrackList(models.Model):
    author = models.ForeignKey(Music, on_delete = models.CASCADE, verbose_name = 'Banda / Compositor')
    track = models.CharField(verbose_name = 'Canción', max_length = 150)

    created = models.DateTimeField(verbose_name = 'Fecha de creación', auto_now_add = True)
    updated = models.DateTimeField(verbose_name = 'Fecha de actualización', auto_now = True)

    class Meta:
        verbose_name = 'Cancion'
        verbose_name_plural = 'Lista de canciones'
        ordering = ['created', 'track']

    def __str__(self):
        return self.track

class MusicDiscs(models.Model):
    DISCS = [
        ('1', '1'),
        ('2', '2'),
        ('3', '3'),
        ('4', '4')
    ]

    author = models.ForeignKey(Music, on_delete = models.CASCADE, verbose_name = 'Banda / Compositor')
    cover = models.ImageField(verbose_name = 'Carátula', upload_to = 'musica/caratulas')
    title = models.CharField(verbose_name = 'Album', max_length = 150)
    release = models.DateField(verbose_name = 'Fecha de lanzamiento')
    genre = models.ManyToManyField(MusicGenre, verbose_name = 'Género Musical')
    duration = models.TimeField(verbose_name = 'Duración')
    numer_discs = models.CharField(verbose_name = 'Número de discos', max_length = 10, choices = DISCS)
    produced = models.ForeignKey(Produced, on_delete = models.CASCADE, verbose_name = 'Productora')

    info = RichTextField(verbose_name = 'Información del disco')

    songs = models.ManyToManyField(TrackList, verbose_name = 'Lista de canciones')

    # Download:
    as_downloaded = models.BooleanField(verbose_name = 'Subido', default = False)
    download_link = models.URLField(verbose_name = 'Link de Descarga', max_length = 200, blank = True)

    # Fecha de edición y creación:
    created = models.DateTimeField(auto_now_add = True)
    updated = models.DateTimeField(auto_now = True)

    class Meta:
        verbose_name = 'Música'
        verbose_name_plural = 'Discos de Música'
        ordering = ['title']

    def __str__(self):
        return self.title    