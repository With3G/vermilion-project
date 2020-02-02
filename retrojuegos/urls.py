from django.urls import path
from . import views
from .views import RetrojuegoListView, RetrojuegoDetailView

urlpatterns = [
    path('', RetrojuegoListView.as_view(), name = 'retrojuegos'),
    path('consola/<int:pk>/', RetrojuegoListView.as_view(), name = 'consola'),
    # path('consola/<int:pk>/', views.for_console, name = 'consola'),
    path('juego/<int:pk>/', RetrojuegoDetailView.as_view(), name = 'juego-clasico')
]