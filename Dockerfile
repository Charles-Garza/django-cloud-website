FROM python:3

# Environment variable
ENV PYTHONUNBUFFERED 1

# update apt-get
RUN apt-get update -y && apt-get upgrade -y

# install libraries
RUN apt-get install -y groff-base

# change work directory
RUN mkdir /app
WORKDIR /app

ADD requirements.txt /app/
RUN pip install https://github.com/django/django/archive/master.tar.gz
RUN pip install -r requirements.txt
COPY . /app/
