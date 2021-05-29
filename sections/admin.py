from django.contrib import admin
from .models import *

# Register your models here.

class HomeAdmin(admin.ModelAdmin):
    pass

class AboutAdmin(admin.ModelAdmin):
    pass


class TechStackImagesAdmin(admin.StackedInline):
    model = TechStackImages


class ProjectAdmin(admin.ModelAdmin):
    inlines = [TechStackImagesAdmin]

class TechStackImagesAdmin(admin.ModelAdmin):
    pass

class ContactAdmin(admin.ModelAdmin):
    pass


admin.site.register(Home, HomeAdmin)
admin.site.register(About, AboutAdmin)
admin.site.register(Project, ProjectAdmin)
admin.site.register(Contact, ContactAdmin)
