"""el_retiro_de_thanos URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from core.views import PortadaListView

urlpatterns = [
    path('accounts/', include('django.contrib.auth.urls')),
    path('', PortadaListView.as_view(), name = 'portada'),
    path('retrojuegos/', include('retrojuegos.urls')),
    path('videojuegos-pc/', include('pc_games.urls')),
    path('series/', include('series.urls')),
    path('peliculas/', include('peliculas.urls')),
    path('musica/', include('music.urls')),
    path('admin/', admin.site.urls),
]

if settings.DEBUG:
    from django.conf.urls.static import static
    urlpatterns += static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)


admin.site.site_title = 'Vermilion Project'
admin.site.site_header = 'Vermilion Project'
admin.site.index_title = 'Panel de Administración'