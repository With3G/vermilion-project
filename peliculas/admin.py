from django.contrib import admin
from .models import Pelicula

class PeliculasAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('title', 'director', 'production', 'year', 'genre_name')
    search_fields = ('title', 'genre__name', 'director__name', 'guion__name', 'year')
    list_filter = ('title', 'genre__name', 'director__name', 'guion__name', 'year')

    def genre_name(self, obj):
        return ", ".join([g.name for g in obj.genre.all().order_by('name')])
    genre_name.short_description = 'Género'

admin.site.register(Pelicula, PeliculasAdmin)