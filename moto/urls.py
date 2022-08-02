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
    path('moto/dateRange',views.Date_Range, name='Date_Range'),
    path('api/',views.getMotos,name='api'),
    path('api/motos/',views.Date_Range,name='motos'),
    path('api/motos/chart_hebdo_api',views.Chart_Hebdo_API,name='Chart_Hebdo_API'),
    path('api/motos/chart_monthly_api',views.Chart_Monthly_API,name='Chart_Monthly_API'),
    path('api/motos/stock_level_api',views.StockLevel_API,name='Stock_Level_API'),
    path('api/motos/last_facture_api',views.Last_Facture_API,name='Last facture_api'),
    path('api/motos/last_BL_api',views.Last_BL_API,name='Last BL_api'),
    path('api/motos/ID_Last_API',views.IDLast_API,name='ID_Last_API'),
    path('api/motos/total2word_API',views.total2word_API,name='total2wordAPI'),
    path('api/motos/venteToday_API',views.Vente_Today_API,name='VenteToday_API'),
]
