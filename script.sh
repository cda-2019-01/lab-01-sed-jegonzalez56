#!/bin/bash

sed 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/\([0-9][0-9]\)/20\3-\2-\1/' data.csv | sed 's/;;/;\\N;/' | sed 's/;N;/;\\N;/' | sed 's/;/,/g' | sed 's/,/./4' | sed 'y/ac/AC/' | sed '/\\N/d'

exit
