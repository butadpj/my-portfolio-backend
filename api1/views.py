from django.shortcuts import render
from rest_framework import viewsets, permissions, status
from sections.models import *
from .serializers import *

from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated, AllowAny
from rest_framework.response import Response
from rest_framework_simplejwt.tokens import RefreshToken


# Create your views here.

class HomeView(viewsets.ModelViewSet):
    queryset = Home.objects.all()
    serializer_class = HomeSerializer
    # permission_classes = (IsAuthenticated,) 
    # pagination_class = ProductPagination


class AboutView(viewsets.ModelViewSet):
    queryset = About.objects.all()
    serializer_class = AboutSerializer
    

class RegisterView(APIView):
    permission_classes = [AllowAny]
    def post(self, request):
        reg_serializer = UserSerializer(data=request.data)

        if reg_serializer.is_valid():
            new_user = reg_serializer.save()
            if new_user:
                return Response(reg_serializer.data, status=status.HTTP_201_CREATED)
        return Response(reg_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class BlackListTokenView(APIView):
    permission_classes = [AllowAny]

    def post(self, request):
        try:
            refresh_token = request.data["refresh_token"]
            token = RefreshToken(refresh_token)
            token.blacklist()
            return Response(status=status.HTTP_200_OK)
        except Exception as e:
            return Response(status=status.HTTP_400_BAD_REQUEST)
        return Response(status=status.HTTP_200_OK)
