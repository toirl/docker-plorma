FROM toirl/ringo:latest

# Argh! We need testing packages :(
RUN pip install --pre plorma webtest mock
# Add specific database configuration
ADD app.ini .
ADD setup_database.sh .
ADD plorma.sh .
EXPOSE 6543
CMD ["sh", "plorma.sh"]
