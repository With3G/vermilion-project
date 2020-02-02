from django.shortcuts import render
from .models import MusicGenre, MusicDiscs
from django.views.generic.list import ListView
from django.views.generic.detail import DetailView

class MusicListView(ListView):
    model = MusicDiscs
    template_name = 'music/music_list.html'

    def get_queryset(self):
        qs = super().get_queryset()
        try:
            query = qs.filter(genre = self.kwargs['pk'])
        except:
            query = qs
        return query

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        context['canciones'] = MusicDiscs.objects.all()
        context['generos'] = MusicGenre.objects.all()
        try:
            context['is_active'] = self.kwargs['pk']
        except:
            context['is_active'] = None
        return context

class MusicDetailView(DetailView):
    model = MusicDiscs
