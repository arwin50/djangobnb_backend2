FROM python:3.14.0a3-slim

WORKDIR /usr/src/djangobnb_backend

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONNUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . . 