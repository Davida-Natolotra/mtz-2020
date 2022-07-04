from os import name
from django.urls import path
from moto import views

urlpatterns = [
    path('moto/', views.index, name='index'),
    path('moto/create', views.createMoto, name='createMoto'),
    path('moto/edit/<int:pk>', views.editMoto, name='editMoto'),
    path('moto/details/<int:pk>', views.detailsMoto, name='detailsMoto'),
    path('moto/delete/<int:pk>', views.deleteMoto, name='deleteMoto'),
    path('moto/archiveMoto', views.archiveMoto, name='archiveMoto'),
    path('moto/Chart_Hebdo', views.Chart_Hebdo, name='Chart_Hebdo'),
    path('moto/Chart_Monthly', views.Chart_Monthly, name='Chart_Monthly'),
    path('moto/Chart_Year_Monthly', views.Chart_Year_Monthly, name='Chart_Year_Monthly'),
    path('moto/Chart_Year_Trimestre', views.Chart_Year_Trimestre, name='Chart_Year_Trimestre'),
    path('moto/Chart_Year_Semestre', views.Chart_Year_Semestre, name='Chart_Year_Semestre'),
    path('api/',views.getMotos,name='api'),
    path('api/motos/',views.Date_Range,name='motos')
]
