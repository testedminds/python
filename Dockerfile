FROM python:3.7.2-stretch
MAINTAINER Bobby Norton <bobby@testedminds.com>
LABEL Description="Base image for Python projects from Tested Minds"

RUN apt-get -y update && apt-get -y install \
    build-essential \
    gfortran \
    libcairo-dev \
    pkg-config \
    zlib1g-dev

RUN pip install --upgrade pip setuptools wheel
