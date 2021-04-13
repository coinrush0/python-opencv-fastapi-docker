FROM python

RUN pip install --upgrade pip

COPY ./requirements.txt ./requirements.txt

RUN apt-get update
RUN apt-get install build-essential
RUN apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN pip install -r requirements.txt