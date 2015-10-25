#!/bin/sh

# Install ringo_tag and ringo_comment from source again as the current
# packages on PYPI have a bug in the MANIFEST.in
cd /tmp
hg clone https://bitbucket.org/ti/ringo_tag
hg clone https://bitbucket.org/ti/ringo_comment
cd ringo_tag; python setup.py install; cd ..
cd ringo_comment; python setup.py install
cd /

# Initialise the database
plorma-admin db init --config app.ini
plorma-admin fixtures load --path /usr/local/lib/python2.7/dist-packages/plorma/fixtures/demo/ --config app.ini
plorma-admin db fixsequences --config app.ini
pserve app.ini
