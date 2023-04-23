#!/bin/bash

# Get weather information from wttr.in.
weather=$(curl -sS "wttr.in/?format=%C+%t+%h")

# Extract the weather condition, temperature, and humidity using regular expressions.
condition=$(echo "$weather" | grep -oE '^[[:alpha:] ]+[[:alpha:]]')
temperature=$(echo "$weather" | grep -oE '[+-]?[0-9]+°C')
humidity=$(echo "$weather" | grep -oE '[0-9]+%')

# Select the appropriate icon according to the weather condition.
case $condition in
  "Clear"*) icon=" ";; #\uf305
  "Partly cloudy"*) icon=" ";; #\uf002
  "Cloudy"*) icon=" ";; #\uf041
  "Mist"*) icon=" ";; #\uf74e
  "Fog"*) icon=" ";; #uf74e
  "Light rain"*) icon=" ";; #\ue009
  "Moderate rain"*) icon=" ";; #\ue009
  "Heavy rain"*) icon=" ";; #\uf02d
  "Overcast"*) icon=" ";; #\uf041
  *) icon=" ";; #\u2757
esac

# Print the weather information.
echo "$icon $condition $temperature $humidity"
