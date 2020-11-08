FROM python:3.6
RUN pip install --upgrade pip 
# Create app directory
WORKDIR /app

# Bundle app source
COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000 80
#CMD [ "python", "app_main.py" ]
CMD ["sh", "run_wsgi.sh"]