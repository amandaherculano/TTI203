from django.shortcuts import render

from django.http import HttpResponse
# Create your views here.


# nao especificou: implicito get
def index(request):
    # return HttpResponse("Hello, Django!")

    variaveis = {
        'minha_primeira_variavel' : 'Hell, variaveis'
    }
    return render(request, 'primeira_aplicacao/index.html', context=variaveis)