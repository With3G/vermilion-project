from django.shortcuts import render
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView
from .models import Serie
from opciones.models import Category

class SerieListView(ListView):
    model = Serie

    def get_queryset(self):
        qs = super().get_queryset()
        try:
            query = qs.filter(category = self.kwargs['pk'])
        except:
            query = qs
        return query

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        context['series'] = Serie.objects.all()
        context['categorias'] = Category.objects.all()
        try:
            context['is_active'] = self.kwargs['pk']
        except:
            context['is_active'] = None
        return context

class SerieDetailView(DetailView):
    model = Serie