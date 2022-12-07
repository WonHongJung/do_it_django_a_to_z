#pull official base image
From python:3.10.8-slim-buster
#set work directory
WORKDIR /usr/src/app

#set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /usr/src/app/
#install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt