#!/bin/bash

curl -O https://radioid.net/static/user.csv
curl -O https://raw.githubusercontent.com/ContactLists/NORMAL-ContactLists/refs/heads/main/RADIODDITY/GD77/GD77_WW_default.csv

cut -d',' -f1,2,3 user.csv > users_radioid.csv
sed -e 's/$/,,,,/' -i users_radioid.csv

cut -d',' -f1,2,3 GD77_WW_default.csv > users_contactlists.csv
sed -e 's/$/,,,,/' -i users_contactlists.csv
