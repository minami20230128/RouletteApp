from django.shortcuts import render
from .models import RouletteItem

def roulette(request):
    items = list(RouletteItem.objects.values_list("label", flat=True))
    return render(request, "game/roulette.html", {"items": items})
