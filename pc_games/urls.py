from django.urls import path
from .views import PCGamesListView, PCGamesDetailView

urlpatterns = [
    path('', PCGamesListView.as_view(), name = 'juegos-pc'),
    path('juego/<int:pk>/', PCGamesDetailView.as_view(), name = 'juego-pc')
]