from django.urls import path
from . import views

urlpatterns = [
    path('api/caisseMotos/',views.list_all_caisse,name='caisseMotos'),
    path("api/caisseMotos/get/<int:pk>",views.get_caisse, name="get_caisse"),
    path('api/caisseMotos/update/<int:pk>',views.update_caisse_moto,name='update_caisseMoto'),
    path('api/caisseMotos/delete/<int:pk>',views.delete_caisse_moto,name='delete_caisse_moto'),
    path('api/caisseMotos/add',views.create_caisse_moto,name='add_caisse_moto'),
    path('api/soldes/',views.get_solde_all,name='soldes'),
    path('api/soldes/update',views.update_solde_moto,name='update_solde_moto'),
    path('api/caisseMotos/add_or_update',views.create_or_update_moto,name='create_or_update_moto'),
]