#!/bin/bash

# Obtener la información del clima desde wttr.in
weather=$(curl -sS "wttr.in/?format=%C+%t+%h")

# Extraer la condición meteorológica, la temperatura y la humedad utilizando expresiones regulares
condition=$(echo "$weather" | grep -oE '^[[:alpha:] ]+[[:alpha:]]')
temperature=$(echo "$weather" | grep -oE '[+-]?[0-9]+°C')
humidity=$(echo "$weather" | grep -oE '[0-9]+%')

# Seleccionar el icono adecuado según la condición meteorológica
case $condition in
  "Clear"*) icon="";;
  "Partly cloudy"*) icon="";;
  "Cloudy"*) icon="";;
  "Mist"*) icon="";;
  "Fog"*) icon="";;
  "Light rain"*) icon="";;
  "Moderate rain"*) icon="";;
  "Heavy rain"*) icon="";;
  "Overcast"*) icon="";;
  *) icon="";;
esac

# Imprimir la información del clima
echo "$icon $condition $temperature $humidity"
