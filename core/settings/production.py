from .development import *

DEBUG = False

CORS_ORIGIN_ALLOW_ALL  = False

CORS_ALLOWED_ORIGINS = [
    "allowed-origins-here.com"
]

ALLOWED_HOSTS = ["your_host_name.com"]

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'database_name',
        'USER': 'database_username',
        'PASSWORD': 'database_password',
        'HOST': 'host_provider',
        'PORT': ''
    }
}

REST_FRAMEWORK = {
    'DEFAULT_RENDERER_CLASSES': (
        'rest_framework.renderers.JSONRenderer',
    ),
    'DEFAULT_PERMISSION_CLASSES' : ('rest_framework.permissions.IsAuthenticatedOrReadOnly',)
}