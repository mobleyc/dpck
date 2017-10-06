FROM python:3.6

ENV PYTHONUNBUFFERED 1

ARG LIBRDKAFKA_VER="0.11.0"

RUN apt-get update

ADD "https://github.com/edenhill/librdkafka/archive/v$LIBRDKAFKA_VER.tar.gz" /src/librdkafka.zip

RUN cd /src \
    && tar xzf librdkafka.zip \
    && cd /src/librdkafka-$LIBRDKAFKA_VER \
    && ./configure --prefix=/usr \
    && make -j \
    && make install

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

RUN pip install -r requirements.txt

ADD . /code/