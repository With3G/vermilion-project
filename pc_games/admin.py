from django.contrib import admin
from .models import PCgames

class PCgamesAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('title', 'developer', 'release', 'genre_name')
    search_fields = ('title', 'developer__name', 'produced__name', 'genre__name', 'director__name', 'guion__name')
    list_filter = ('title', 'developer__name', 'produced__name', 'director__name', 'genre__name')

    def genre_name(self, obj):
        return ", ".join([g.name for g in obj.genre.all().order_by('name')])
    genre_name.short_description = 'Género'

admin.site.register(PCgames, PCgamesAdmin)