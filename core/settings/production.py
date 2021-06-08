from .development import *

DEBUG = False

CORS_ORIGIN_ALLOW_ALL  = False

CORS_ALLOWED_ORIGINS = [
    "https://butadpj.vercel.app",
]

ALLOWED_HOSTS = ["nenetelecom.pythonanywhere.com", "api.butadpj.com", "butadpj.com"]

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'nenetelecom$my-portfolio-db',
        'USER': 'nenetelecom',
        'PASSWORD': 'madeinjapan123',
        'HOST': 'nenetelecom.mysql.pythonanywhere-services.com',
        'PORT': ''
    }
}

REST_FRAMEWORK = {
    'DEFAULT_PERMISSION_CLASSES' : ('rest_framework.permissions.IsAuthenticatedOrReadOnly',),
    'DEFAULT_AUTHENTICATION_CLASSES': ('rest_framework_simplejwt.authentication.JWTAuthentication',),
    'DEFAULT_RENDERER_CLASSES': (
        'rest_framework.renderers.JSONRenderer',
    ),
}