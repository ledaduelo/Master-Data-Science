#!/bin/sh

#Cálculo del modelo con más motores

csvsort -d "^" -c nb_engines -r optd_aircraft.csv | head -2|csvcut -c model |tail -1 
