from django.urls import path
from .views import terminal

urlpatterns = [
    path('', terminal, name='terminal'),
]
