#!/bin/bash

# Obtener la información del clima desde wttr.in
weather=$(curl -sS "wttr.in/?format=%C+%t+%h")

# Extraer la condición meteorológica, la temperatura y la humedad utilizando expresiones regulares
condition=$(echo "$weather" | grep -oE '^[[:alpha:] ]+[[:alpha:]]')
temperature=$(echo "$weather" | grep -oE '[+-]?[0-9]+°C')
humidity=$(echo "$weather" | grep -oE '[0-9]+%')

# Seleccionar el icono adecuado según la condición meteorológica
case $condition in
  "Clear"*) icon="\ue305";;
  "Partly cloudy"*) icon="\uf002";;
  "Cloudy"*) icon="\uf041";;
  "Mist"*) icon="\uf74e";;
  "Fog"*) icon="\uf74e";;
  "Light rain"*) icon="\ue009";;
  "Moderate rain"*) icon="\ue009";;
  "Heavy rain"*) icon="\uf02d";;
  "Overcast"*) icon="\uf041";;
  *) icon="❗";;
esac

# Imprimir la información del clima
echo "$icon $condition $temperature $humidity"
