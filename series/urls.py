from django.urls import path
from . import views
from .views import SerieListView, SerieDetailView

urlpatterns = [
    path('', SerieListView.as_view(), name = 'series'),
    path('categoria/<int:pk>/', views.SerieListView.as_view(), name = 'serie-categoria'),
    path('serie/<int:pk>/', SerieDetailView.as_view(), name = 'serie')
]