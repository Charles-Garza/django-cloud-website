FROM python:3

# Environment variable
ENV PYTHONUNBUFFERED 1

# install tooling
#RUN apk add --no-cache curl tar bash procps

# update apt-get
RUN apt-get update -y && apt-get upgrade -y

# install libraries
RUN apt-get install -y groff-base

# change work directory
RUN mkdir /app
WORKDIR /app

ADD requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/

COPY ./scripts/createUser.sql .

CMD [ "sh", "-c", "./createUser.sql" ]
