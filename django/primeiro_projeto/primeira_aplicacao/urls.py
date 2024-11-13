from django.urls import path
from primeira_aplicacao import views

# vieez responsaveis por requisicoes http e ir para template 
# http fica nas views 


urlpatters = [
    path('', views.index, name='index'),
]