"""
URL configuration for config project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.http import HttpResponse
from django.shortcuts import render


def index(request):
    return HttpResponse('<h1>hello</h1>')

def gugu(request, dan):
    context = {
        'dan': dan,
        # 'results': [(i, dan * i) for i in range(1, 10)]
        'range': range(1, 10)
    }

    return render(request, 'gugu.html', context)

def gugu_full(request):
    all_gugu = [
        {
            'dan': dan,
            'results': [f'{dan} x {i} = {dan * i}' for i in range(1, 10)]
        }
        for dan in range(1, 10)
    ]
    context = {'all_gugu': all_gugu}
    return render(request, 'gugu_full.html', context)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index),
    path('gugu/', gugu_full),
    path('gugu/<int:dan>/', gugu),
]
