#FROM python:latest

# Allows docker to cache installed dependencies between builds
#WORKDIR /code/app

#COPY . /code/app
#RUN pip install -r requirements.txt

#EXPOSE 8000
#RUN ls 
# runs the production server
#CMD ["python", "app/manage.py", "runserver", "0.0.0.0:8000"]

FROM nginx 
COPY calc.html /usr/share/nginx/html
