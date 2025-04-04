#!/bin/bash
curl https://radioid.net/static/user.csv -o user.csv
cut -d',' -f1,2,3 user.csv > users_mod.csv
sed -e 's/$/,,,,/' -i users_mod.csv
