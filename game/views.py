from django.shortcuts import render

def roulette(request):
    return render(request, "game/roulette.html")
