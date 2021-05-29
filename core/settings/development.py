from .base import *

DEBUG = True

# Application definition

# Application definition
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django_cleanup.apps.CleanupConfig',
    'rest_framework',
    'rest_framework_simplejwt.token_blacklist',
    'sections',
    'api1',
    'users',
]

MIDDLEWARE += ["corsheaders.middleware.CorsMiddleware"]


CORS_ALLOWED_ORIGINS = [
    "http://localhost:3000",
    "https://butadpj.vercel.app",
]

# Allow all hosts
# CORS_ORIGIN_ALLOW_ALL = True
# ALLOWED_HOSTS = ['*']


AUTH_USER_MODEL = 'users.CustomUser' # Customer user Model


TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'django-portfolio',
        'USER': 'root',
        'PASSWORD': 'madeinjapan',
        'HOST': 'localhost',
        'PORT': '3306'
    }
}

REST_FRAMEWORK = {
    'DEFAULT_PERMISSION_CLASSES' : ('rest_framework.permissions.IsAuthenticatedOrReadOnly',),
    'DEFAULT_AUTHENTICATION_CLASSES': ('rest_framework_simplejwt.authentication.JWTAuthentication',),
}

from datetime import timedelta
SIMPLE_JWT = {
    'ACCESS_TOKEN_LIFETIME': timedelta(minutes=5),
    'REFRESH_TOKEN_LIFETIME': timedelta(days=1),
    # 'ROTATE_REFRESH_TOKENS': False,
    # 'BLACKLIST_AFTER_ROTATION': True,
    # 'UPDATE_LAST_LOGIN': False,

    'ALGORITHM': 'HS256',
    'SIGNING_KEY': SECRET_KEY,
    'VERIFYING_KEY': SECRET_KEY,
    # 'AUDIENCE': None,
    # 'ISSUER': None,

    # 'AUTH_HEADER_TYPES': ('Bearer',),
    # 'AUTH_HEADER_NAME': 'HTTP_AUTHORIZATION',
    # 'USER_ID_FIELD': 'id',
    # 'USER_ID_CLAIM': 'user_id',
    # 'USER_AUTHENTICATION_RULE': 'rest_framework_simplejwt.authentication.default_user_authentication_rule',

    # 'AUTH_TOKEN_CLASSES': ('rest_framework_simplejwt.tokens.AccessToken',),
    # 'TOKEN_TYPE_CLAIM': 'token_type',

    # 'JTI_CLAIM': 'jti',

    # 'SLIDING_TOKEN_REFRESH_EXP_CLAIM': 'refresh_exp',
    # 'SLIDING_TOKEN_LIFETIME': timedelta(minutes=5),
    # 'SLIDING_TOKEN_REFRESH_LIFETIME': timedelta(days=1),
}


DATE_INPUT_FORMATS = ['%m-%d-%Y']


STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'public')
]

STATIC_ROOT = os.path.join(BASE_DIR, "collected_static")


MEDIA_URL = '/images/uploads/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'public/uploads/')

