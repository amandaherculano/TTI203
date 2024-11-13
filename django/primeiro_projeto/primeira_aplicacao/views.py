from django.shortcuts import render

from django.http import HttpResponse
# Create your views here.


# hirosnfiofd
# nao especificou: implicito get
def index(request):
    return HttpResponse("Hello, Django!")

    