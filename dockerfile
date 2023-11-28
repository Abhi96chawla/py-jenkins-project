FROM python:latest

# Allows docker to cache installed dependencies between builds
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . code
WORKDIR /code/app

EXPOSE 8000

# runs the production server
CMD ["python", "manage.py"]
