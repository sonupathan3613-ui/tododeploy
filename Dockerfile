FROM python:3.12-slim
WORKDIR /data

RUN pip install --upgrade pip setuptools wheel \
    && pip install django==3.2

COPY . .
RUN python manage.py migrate
