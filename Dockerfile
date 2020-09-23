# Pull base image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /PycharmProjects/books

# Install dependencies
COPY Pipfile Pipfile.lock /PycharmProjects/books/
RUN pip install pipenv && pipenv install --system

# COPY project
COPY . /PycharmProjects/books/
