from django.db import models
from opciones.models import Developer, Produced, Director, Guion, Music, Genre, Language
from ckeditor.fields import RichTextField

class PCgames(models.Model):
    PLAYERS = [
        ('1', '1'),
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
        ('5', 'Masivo')
    ] 

    title = models.CharField(verbose_name = 'Título', max_length = 150)
    poster = models.ImageField(verbose_name = 'Carátula', upload_to = 'videojuegos/caratula')
    developer = models.ForeignKey(Developer, on_delete = models.CASCADE, verbose_name = 'Desarrollado por')
    produced = models.ForeignKey(Produced, on_delete = models.CASCADE, verbose_name = 'Producido por')
    director = models.ForeignKey(Director, on_delete = models.CASCADE, verbose_name = 'Director')
    guion = models.ForeignKey(Guion, on_delete = models.CASCADE, verbose_name = 'Guión')
    music = models.ForeignKey(Music, on_delete = models.CASCADE, verbose_name = 'Banda sonora')
    release = models.DateField(verbose_name = 'Fecha de lanzamiento')
    genre = models.ManyToManyField(Genre, verbose_name = 'Género')
    players = models.CharField(verbose_name = 'Jugadores', max_length = 10, choices = PLAYERS)
    language = models.ForeignKey(Language, on_delete = models.CASCADE, verbose_name = 'Idioma')
    size = models.IntegerField(verbose_name = 'Tamaño (MB)')
    
    plot = RichTextField(verbose_name = 'Sipnosis')

    screen_one = models.ImageField(verbose_name = 'Captura 1', upload_to = 'videojuegos/capturas')
    screen_two = models.ImageField(verbose_name = 'Captura 2', upload_to = 'videojuegos/capturas')
    screen_three = models.ImageField(verbose_name = 'Captura 3', upload_to = 'videojuegos/capturas')
    screen_four = models.ImageField(verbose_name = 'Captura 4', upload_to = 'videojuegos/capturas')

     # Download:
    as_downloaded = models.BooleanField(verbose_name = 'Subido', default = False)
    download_link = models.URLField(verbose_name = 'Link de Descarga', max_length = 200, blank = True)

    # Fecha de edición y creación:
    created = models.DateTimeField(auto_now_add = True)
    updated = models.DateTimeField(auto_now = True)

    class Meta:
        verbose_name = 'Videojuego PC'
        verbose_name_plural = 'Videojuegos de PC'
        ordering = ['title', 'release']

    def __str__(self):
        return self.title    