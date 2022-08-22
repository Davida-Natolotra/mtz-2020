from os import name
from django.urls import path
from moto import views

urlpatterns = [
    path('api/',views.getMotos,name='api'),
    path('api/motos/',views.Date_Range_API,name='motos'),
    path('api/motos/chart_hebdo_api',views.Chart_Hebdo_API,name='Chart_Hebdo_API'),
    path('api/motos/chart_monthly_api',views.Chart_Monthly_API,name='Chart_Monthly_API'),
    path('api/motos/stock_level_api',views.StockLevel_API,name='Stock_Level_API'),
    path('api/motos/last_facture_api',views.Last_Facture_API,name='Last facture_api'),
    path('api/motos/last_BL_api',views.Last_BL_API,name='Last BL_api'),
    path('api/motos/ID_Last_API',views.IDLast_API,name='ID_Last_API'),
    path('api/motos/total2word_API',views.total2word_API,name='total2wordAPI'),
    path('api/motos/venteToday_API',views.Vente_Today_API,name='VenteToday_API'),
    path('api/motos/createMoto',views.add_moto_API,name='add_moto_API'),
    path('api/motos/updateMoto/<int:pk>',views.update_moto_API,name='update_moto_API'),
    path('api/motos/deleteMoto/<int:pk>',views.delete_moto_API,name='delete_moto_API'),
    path('api/motos/resetMoto',views.reset_ID_moto_API,name='reset_ID_moto_API'),
    path('api/motos/cancelFacture/<int:pk>',views.cancel_facture_API,name='cancel_facture_API'),
    path('api/motos/ventes/',views.get_vente_API,name='ventes'),
    path('api/user/',views.UserView.as_view(),name='user'),
    path('api/motos/<int:pk>',views.detailMoto,name='detailMoto'),
]
