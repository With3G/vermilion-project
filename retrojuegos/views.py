from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Console, Retrojuego
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView

import zipfile

class RetrojuegoListView(ListView):
    model = Retrojuego
    # paginate_by = 24

    def get_queryset(self):
        # Recuperando el queryset original:
        qs = super().get_queryset()
        # Cacheamos la ausencia de parámetros en el código y retornamos lo que nos haga falta entonces:
        try:
            query = qs.filter(console = self.kwargs['pk'])
        except:
            query = qs

        return query

    def get_context_data(self, *args, **kwargs, ):
        context = super().get_context_data(**kwargs)
        context['consolas'] = Console.objects.all()
        context['videojuegos'] = self.get_queryset() # Retrojuego.objects.all()
        try:
            context['is_active'] = self.kwargs['pk']
            context['consola_listada'] = Console.objects.filter(pk = self.kwargs['pk'])
            print(context['is_active'])
        except:
            context['is_active'] = None
            context['consola_listada'] = None
        return context

class RetrojuegoDetailView(DetailView):
    model = Retrojuego

# Generador de Gamelist.xml
def gamelist_generator(request, pk):
        videogames = Retrojuego.objects.filter(console = pk)
        consoles = Console.objects.all()
        is_active = pk

        gamelist = open('./retrojuegos/templates/retrojuegos/gamelist.xml', 'w')

        gamelist.write('<?xml version="1.0" encoding="utf-8"?>\n')
        gamelist.write('<gameList>\n')

        for games in videogames:
            gamelist.write('    <game>\n')
            gamelist.write('        <path>./' + games.namefile + '</path>\n')
            gamelist.write('        <name>' + games.title + '</name>\n')
            description = games.description.replace('<p>', '')
            gamelist.write('        <desc>' + description.replace('</p>', '') + '</desc>\n')
            gamelist.write('        <image>./covers/' + games.cover.name.replace('retrogames/covers/', '') + '</image>\n')
            gamelist.write('        <video>./videosnaps/' + games.video.name.replace('retrogames/videosnaps/', '') + '</video>\n')
            gamelist.write('        <marquee>./logo/' + games.logo.name.replace('retrogames/logo/', '') + '</marquee>\n')
            gamelist.write('        <thumbnail>./logo/' + games.logo.name.replace('retrogames/logo/', '') + '</thumbnail>\n')
            gamelist.write('        <rating>0</rating>\n')
            gamelist.write('        <releasedate>' + str(games.date_released).replace('-','') + 'T000000</releasedate>\n')
            gamelist.write('        <developer>' + games.developer.name + '</developer>\n')
            gamelist.write('        <publisher>' + games.publisher.name + '</publisher>\n')
            for games_genre in games.genre.all():
                genre = str(games_genre)
            gamelist.write('        <genre>' + genre + '</genre>\n')
            gamelist.write('        <players>' + games.players + '</players>\n')
            gamelist.write('        <playcount>0</playcount>\n')
            gamelist.write('        <lastplayed>20200221T115107</lastplayed>\n')
            gamelist.write('    </game>\n')
        gamelist.write('</gameList>')
        gamelist.close()

        return HttpResponse(open('./retrojuegos/templates/retrojuegos/gamelist.xml').read(), content_type='text/xml')

# Esta vista genera un archivo zip, tarda un poco en crearlo.
def media_generator(request, pk):
    videogames = Retrojuego.objects.filter(console = pk)
    consoles = Console.objects.all()
    is_active = pk

    covers = zipfile.ZipFile('./media/retrogames/zip/media.zip', 'w')
    for games in videogames:
        covers.write('./media/{}'.format(games.cover.name), compress_type=zipfile.ZIP_DEFLATED)
        covers.write('./media/{}'.format(games.video.name), compress_type=zipfile.ZIP_DEFLATED)
        covers.write('./media/{}'.format(games.logo.name), compress_type=zipfile.ZIP_DEFLATED)

    covers.write('./leeme.txt', compress_type=zipfile.ZIP_DEFLATED)
    covers.close()

    return redirect('/media/retrogames/zip/media.zip')
