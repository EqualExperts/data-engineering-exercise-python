FROM python:3.10.4-slim as base

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8


FROM base AS python-deps

RUN apt-get update && apt-get install -y --no-install-recommends gcc libpq-dev curl sqlite3
RUN pip install pipenv

WORKDIR /root/