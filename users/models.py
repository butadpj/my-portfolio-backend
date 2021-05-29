from django.db import models
from django.contrib.auth.models import AbstractUser, BaseUserManager
from django.utils.translation import ugettext_lazy as _


# Create your models here.
class CustomUserManager(BaseUserManager):
    """Define a model manager for User model with no username field."""

    def _create_user(self, username, email, first_name, last_name, password=None, **extra_fields):
        # if not email:
        #     raise ValueError('The given mobile number must be set')
        email = email.replace(" ", "")
        first_name = first_name.lstrip()
        last_name = last_name.lstrip()
        user = self.model(username=username, email=email, first_name=first_name, last_name=last_name, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user



    def create_user(self, username, email, first_name, last_name, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', False)
        extra_fields.setdefault('is_superuser', False)
        return self._create_user(username, email, first_name, last_name, password, **extra_fields)

    def create_superuser(self, username, email, first_name, last_name, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')

        return self._create_user(username, email, first_name, last_name, password, **extra_fields)


class CustomUser(AbstractUser):
    username = models.CharField(max_length=50, null=True, blank=True, unique=True)
    email = models.EmailField(unique=True, verbose_name='Email address')
    first_name = models.CharField(max_length=30, null=False, blank=False, verbose_name='First name')
    last_name = models.CharField(max_length=30, null=False, blank=False, verbose_name='Last name')
    start_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.first_name

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email', 'first_name', 'last_name']
    objects = CustomUserManager()



