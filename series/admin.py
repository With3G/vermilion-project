from django.contrib import admin
from .models import Serie

class SerieAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('title', 'first_emission', 'last_emission', 'created_by', 'genre_name')
    search_fields = ('title', 'first_emission')
    list_filter = ('title', 'genre__name', 'first_emission', 'last_emission')

    def genre_name(self, obj):
        return ", ".join([g.name for g in obj.genre.all().order_by('name')])
    genre_name.short_description = 'Género'

admin.site.register(Serie, SerieAdmin)
