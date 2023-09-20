#!/usr/bin/env bash
# exit on error
set -o errexit

#poetry install
pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate

python manage.py createsuperuser --username USERNAME --email rokero.0407@hotmail.com --password mysecretadminpassword --no-input 