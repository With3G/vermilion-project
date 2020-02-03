from django.contrib import admin
from .models import Portada, Nube

class PortadaAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('title', 'created')
    
    date_hierarchy = 'created'

class NubeAdmin(admin.ModelAdmin):
    readonly_fields = ('fecha_creacion', 'fecha_actualizacion')
    list_display = ('titulo', 'categoria', 'nube')

admin.site.register(Portada, PortadaAdmin)
admin.site.register(Nube, NubeAdmin)