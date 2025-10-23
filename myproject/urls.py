from django.http import HttpResponse

def home(request):
    return HttpResponse("<h1>Welcome to Django! 🎉<br>You're running on Railway with Docker!</h1>")

from django.contrib import admin
from django.urls import path

urlpatterns = [
    path('', home), 
    path('admin/', admin.site.urls),
]
