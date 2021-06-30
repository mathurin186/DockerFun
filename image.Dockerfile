FROM ubuntu:14.04
LABEL MAINTAINER="mathurin186"

WORKDIR /home/app

RUN apt-get update \
    && apt-get install curl \
        python-pip \
        python-dev \
        python-yaml \
        python-apt \
    && apt-get clean \

RUN pip install --upgrade pip
RUN pip install "ansible>=2.5"
RUN pip install pillow

ADD watermark.py /home/watermark.py
ADD RobotoBlack.ttf /home/RobotoBlack.ttf

CMD curl --version