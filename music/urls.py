from django.urls import path
from . import views
from .views import MusicListView, MusicDetailView

urlpatterns = [
    path('', MusicListView.as_view(), name = 'musica'),
    path('genero/<int:pk>/', views.MusicListView.as_view(), name = 'musica-genero'),
    path('album/<int:pk>/', MusicDetailView.as_view(), name = 'album')
]