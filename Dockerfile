ARG PYTHON_VERSION=3.10.0a5-alpine3.13

FROM python:${PYTHON_VERSION}

ENV PIP_DEFAULT_TIMEOUT=100 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_NO_CACHE_DIR=1 \
    CRYPTOGRAPHY_DONT_BUILD_RUST=1


WORKDIR /srv/app

RUN apk add --update alpine-sdk
RUN apk add --update py-pip
RUN apk add --no-cache gcc libffi-dev openssl-dev graphviz imagemagick inkscape
RUN apk --update add build-base

RUN pip install --no-cache-dir diagrams 
RUN pip install pipenv cryptography

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f

RUN pip install poetry

COPY . .