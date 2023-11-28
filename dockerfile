FROM python:latest

# Allows docker to cache installed dependencies between builds
WORKDIR /code/app

COPY . /code/app
RUN pip install -r requirements.txt
CMD ["pwd"]
CMD ["ls"]

# runs the production server
#CMD ["python", "manage.py"]

#ADD requirements.txt /
#RUN pip install -r requirements.txt
#COPY . 
#ADD manage.py /
#CMD [ "python", "./main.py" ]
