FROM gcr.io/tensorflow/tensorflow:latest-gpu

RUN apt update && apt install wget

RUN cd /tmp && wget https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py

RUN pip3 install tensorflow-gpu numpy scipy gym
