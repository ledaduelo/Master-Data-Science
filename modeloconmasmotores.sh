#!/bin/sh

#esto es un comentario, lo anterior la cabecera

csvsort -d "^" -c nb_engines -r optd_aircraft.csv | head -2|csvcut -c model |tail -1 