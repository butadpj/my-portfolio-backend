from django.contrib import admin
from .models import *



# Register your models here.


class HomeAdmin(admin.ModelAdmin):
    pass

class AboutAdmin(admin.ModelAdmin):
    pass


class TechStackAdmin(admin.StackedInline):
    model = TechStack


class ProjectAdmin(admin.ModelAdmin):
    inlines = [TechStackAdmin]

class TechStackAdmin(admin.ModelAdmin):
    pass

class ContactAdmin(admin.ModelAdmin):
    pass


admin.site.register(Home, HomeAdmin)
admin.site.register(About, AboutAdmin)
admin.site.register(Project, ProjectAdmin)
admin.site.register(Contact, ContactAdmin)
