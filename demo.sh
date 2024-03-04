#!/bin/bash

# Write docker-compose.yaml content to a file
echo '
services:
  calculatorapp:
    image: "ragowe9292/python-calculator:latest"
    ports:
      - "8000:8000"
' > docker-compose.yaml

# Run docker-compose up
docker-compose up
