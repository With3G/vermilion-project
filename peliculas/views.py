from django.shortcuts import render
from .models import Pelicula
from opciones.models import Category
from django.views.generic.list import ListView
from django.views.generic.detail import DetailView

class PeliculaListView(ListView):
    model = Pelicula

    def get_queryset(self):
        qs = super().get_queryset()
        try:
            query = qs.filter(category = self.kwargs['pk'])
        except:
            query = qs
        return query

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        context['peliculas'] = self.get_queryset()
        context['categorias'] = Category.objects.all()
        try:
            context['is_active'] = self.kwargs['pk']
        except:
            context['is_active'] = None
        return context

class PeliculaDetailView(DetailView):
    model = Pelicula

