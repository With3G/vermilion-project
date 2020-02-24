from django.urls import path
from . import views
from .views import RetrojuegoListView, RetrojuegoDetailView

urlpatterns = [
    path('', RetrojuegoListView.as_view(), name = 'retrojuegos'),
    path('consola/<int:pk>/', RetrojuegoListView.as_view(), name = 'consola'),
    path('juego/<int:pk>/', RetrojuegoDetailView.as_view(), name = 'juego-clasico'),
    path('gamelist/<int:pk>/', views.gamelist_generator, name = 'gamelist'),
    path('media/<int:pk>/', views.media_generator, name = 'media'),
]