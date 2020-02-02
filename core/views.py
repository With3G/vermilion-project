from django.shortcuts import render
from django.views.generic.list import ListView
from django.shortcuts import render, get_object_or_404, get_list_or_404
from .models import Portada

from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required

@method_decorator(login_required, name = 'dispatch')
class PortadaListView(ListView):
    model = Portada
    paginate_by = 10
