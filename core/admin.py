from django.contrib import admin
from .models import Portada

class PortadaAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('title', 'created')
    
    date_hierarchy = 'created'

admin.site.register(Portada, PortadaAdmin)