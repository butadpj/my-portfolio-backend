from rest_framework import serializers
from django.contrib.auth import get_user_model
from sections.models import *

class HomeSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Home

        # to get all fields and put it into single array
        fields = [field.name for field in model._meta.fields] 
        fields.insert(0, 'url') # push url field in index 0


class AboutSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = About

        # to get all fields and put it into single array
        fields = [field.name for field in model._meta.fields] 
        fields.insert(0, 'url') # push url field in index 0

class ProjectSerializer(serializers.HyperlinkedModelSerializer):
    tech_stack_images = serializers.StringRelatedField(many=True)

    class Meta:
        model = Project

        # to get all fields and put it into single array
        fields = [field.name for field in model._meta.fields] 
        fields.insert(0, 'url') # push url field in index 0

class TechStackImagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = TechStackImages

        # to get all fields and put it into single array
        fields = [field.name for field in model._meta.fields] 
        fields.insert(0, 'url') # push url field in index 0

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = get_user_model()
        fields = ['id', 'username', 'email', 'first_name', 'last_name', 'password']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        password = validated_data.pop('password', None)
        instance = self.Meta.model(**validated_data)
        if password is not None:
            instance.set_password(password)
        instance.save()
        return instance
    