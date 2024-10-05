FROM python:3.10-slim

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME

RUN apt-get update && apt-get install -y build-essential git

COPY . ./

RUN pip install --no-cache-dir -e .
