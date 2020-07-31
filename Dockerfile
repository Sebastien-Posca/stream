FROM  balenalib/rpi-raspbian:buster

WORKDIR /tmp

RUN # Install compile dependencies
RUN apt-get update

RUN apt-get install -y  \
    git build-essential \
    python3 \
    python3-pip \
    libilmbase-dev \
    libopenexr-dev \
    libgstreamer1.0-dev \
    libilmbase23 \
    libjpeg-dev \
    libtiff5-dev \
    libjasper-dev \
    libpng12-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libv4l-dev \
    libxvidcore-dev \
    libx264-dev \
    qt4-dev-tools \
    libatlas-base-dev \
    libqt4-test

RUN pip3 install opencv-python==3.4.6.27
RUN pip3 install flask-opencv-streamer

ADD https://api.github.com/repos/Sebastien-Posca/stream/git/refs/heads/master version.json
RUN git clone https://github.com/Sebastien-Posca/stream.git
WORKDIR /tmp/stream

CMD python3 stream.py 
