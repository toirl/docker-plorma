#!/bin/sh

pg_isready
if [ $? != 0 ]; then
	pg_ctlcluster 9.4 main start
	sudo -u postgres createuser -d ringo
	sudo -u postgres createuser -d root
fi
