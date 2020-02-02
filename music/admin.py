from django.contrib import admin
from .models import TrackList, MusicGenre, MusicDiscs

class MusicDiscsAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('title', 'author', 'genre_name')
    search_fields = ('title', 'author__name', 'genre__genre')
    list_filter = ('title', 'author__name', 'genre__genre', 'release')

    def genre_name(self, obj):
        return ", ".join([g.genre for g in obj.genre.all().order_by('genre')])
    genre_name.short_description = 'Género'

class MusicAdmin(admin.ModelAdmin):
    readonly_fields = ('created','updated')

admin.site.register(MusicDiscs, MusicDiscsAdmin)
admin.site.register(MusicGenre, MusicAdmin)
admin.site.register(TrackList, MusicAdmin)