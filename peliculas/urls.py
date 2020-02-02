from django.urls import path
from . import views
from .views import PeliculaListView, PeliculaDetailView

urlpatterns = [
    path('', PeliculaListView.as_view(), name = 'peliculas'),
    path('categoria/<int:pk>/', views.PeliculaListView.as_view(), name = 'pelicula-categoria'),
    path('pelicula/<int:pk>/', PeliculaDetailView.as_view(), name = 'pelicula')
]