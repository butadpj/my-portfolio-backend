#* Automate the initial configuration setup. 
#? Read more from "README.txt" file

#!/bin/bash 

## set DJANGO_SETTINGS_MODULE
read -p "Select an environment to export (dev or prod): " ENV
read -p "Enter your settings folder: " SETTINGS

if [ $ENV == 'dev' ]
then
    export DJANGO_SETTINGS_MODULE=$SETTINGS.settings.development
    python manage.py runserver
else
    export DJANGO_SETTINGS_MODULE=$SETTINGS.settings.production
    python manage.py runserver
fi
