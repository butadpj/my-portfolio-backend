from django.urls import path, include
from rest_framework import routers
from . import views


#? CLASS BASED VIEWS --------
router = routers.DefaultRouter()
router.register('home', views.HomeView)
router.register('about', views.AboutView)
router.register('projects', views.ProjectView)
router.register('tech_stacks', views.TechStackView)


urlpatterns = [
    path('', include(router.urls)),
    path('auth/', include('rest_framework.urls', namespace="auth_v1")),
    path('users/register/', views.RegisterView.as_view(), name="register_user"),
    path('users/logout/blacklist/', views.BlackListTokenView.as_view(), name="logout_user"),
]