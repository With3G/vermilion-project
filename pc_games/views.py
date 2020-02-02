from django.shortcuts import render
from .models import PCgames
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView

class PCGamesListView(ListView):
    model = PCgames

class PCGamesDetailView(DetailView):
    model = PCgames
