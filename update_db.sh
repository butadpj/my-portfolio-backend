#* Automate makemigrations and migrate commands. 
#? Read more from "README.txt" file

#!/bin/bash 

## set DJANGO_SETTINGS_MODULE
read -p "Select an environment to export (dev or prod): " ENV
read -p "Enter your settings folder: " SETTINGS

if [ $ENV == 'dev' ]
then
    python manage.py makemigrations --settings=$SETTINGS.settings.development
    python manage.py migrate --settings=$SETTINGS.settings.development
else
    python manage.py makemigrations --settings=$SETTINGS.settings.production
    python manage.py migrate --settings=$SETTINGS.settings.production
fi
