from django.contrib import admin
from .models import Item

# Register your models here.
class DummyAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,               {'fields': ['name']}),
        (None,               {'fields': ['description']}),

    ]
    list_display = ('name', 'description')
admin.site.register(Item, DummyAdmin)