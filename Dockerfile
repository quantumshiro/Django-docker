FROM python:3
ENV PYTHONNUNBUFFERD 1

RUN apt-get update
RUN apt-get -y install locales && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
RUN apt-get install -y vim less
RUN mkdir /src
WORKDIR /src

ADD requirements.txt /src/

RUN pip install -r requirements.txt
ADD . /src/
