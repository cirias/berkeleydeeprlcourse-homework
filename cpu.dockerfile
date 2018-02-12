FROM gcr.io/tensorflow/tensorflow:latest

RUN apt update && apt install -y wget

RUN cd /tmp && wget https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py

RUN pip3 install numpy
RUN pip3 install scipy
RUN pip3 install tensorflow
RUN pip3 install gym==0.7.4

# opencv
RUN apt update && apt install -y libsm6 libxrender1 libxext6
RUN pip3 install opencv-python

RUN apt install -y cmake zlib1g-dev libav-tools
RUN pip3 install gym[atari]==0.7.4
