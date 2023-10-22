FROM python:3.10.11-slim-buster

WORKDIR /test

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=0

COPY requirements.txt /test/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /test


CMD sh -c 'python3 vulnerable-flask-app.py'
