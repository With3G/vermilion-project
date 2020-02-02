from django.shortcuts import render
from .models import Console, Retrojuego
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView

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
            print(context['consola_listada'])
        except:
            context['is_active'] = None
            context['consola_listada'] = None
        return context

class RetrojuegoDetailView(DetailView):
    model = Retrojuego

""" Arreglo provisional hasta que averigue como recuperar parametros mediante CBV
def for_console(request, pk):
        videogames = Retrojuego.objects.filter(console = pk)
        consoles = Console.objects.all()
        is_active = pk
        return render(request, 'retrojuegos/retrojuego_list.html', {'videojuegos': videogames, 'consolas': consoles, 'is_active': is_active})
"""