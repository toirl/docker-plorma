FROM debian

# Install minimum required packages.
# Note: gcc and python-dev are needed to compile
# python-Levenshtein.
RUN apt-get -y update && apt-get -y install \
	mercurial \
	python-setuptools \
	python-psycopg2 \
	python-lxml \
	python-pip \
	postgresql-client \
	gcc \
	python-dev

# Argh! We need testing packages :(
RUN pip install --pre plorma webtest mock
# Add specific database configuration
ADD app.ini .
ADD plorma.sh .
EXPOSE 6543
CMD ["sh", "plorma.sh"]
