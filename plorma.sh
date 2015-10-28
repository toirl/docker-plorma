#!/bin/sh

# Initialise the database
plorma-admin db init --config app.ini
plorma-admin fixtures load --path /usr/local/lib/python2.7/dist-packages/plorma/fixtures/demo/ --config app.ini
plorma-admin db fixsequence --config app.ini
pserve app.ini
