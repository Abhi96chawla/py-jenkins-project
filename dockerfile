FROM python:latest

# Allows docker to cache installed dependencies between builds
#WORKDIR /code/app

#COPY . /code/app

#COPY requirements.txt requirements.txt
#RUN pip install --no-cache-dir -r requirements.txt


# runs the production server
#CMD ["python", "manage.py"]


WORKDIR /code/app

COPY . .

RUN pip install -r requirements.txt
EXPOSE 5000

CMD["python", "manage.py"]
