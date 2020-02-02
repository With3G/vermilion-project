from django.db import models

class Portada(models.Model):
    title = models.CharField(verbose_name = 'Título', max_length = 150)
    image = models.ImageField(verbose_name = 'Imagen', upload_to = 'portada', blank = True)
    content = models.TextField(verbose_name = 'Contenido')
    author = models.ForeignKey('auth.User', on_delete = models.CASCADE, verbose_name = 'Autor')
    link = models.URLField(verbose_name = 'Enlace', blank = True, max_length = 200)

    created = models.DateTimeField(verbose_name = 'Fecha de creación', auto_now_add = True)
    updated = models.DateTimeField(verbose_name = 'Fecha de actualización', auto_now = True)

    class Meta:
        verbose_name = 'Entrada'
        verbose_name_plural = 'Entradas'
        ordering = ['-created']
    
    def __str__(self):
        return self.title