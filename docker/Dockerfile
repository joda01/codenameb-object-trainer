#
# \author Joachim Danmayr
# \date   2022-02-25
# \brief  Contains everything which is needed to train models using yolo v5
#         https://github.com/ultralytics/yolov5
#
# \license GNU General Public License v3.0
#
FROM ubuntu:20.04

ENV TZ=Europe/Vienna
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN  apt-get update && \
     apt-get install -y python3-pip git python3-opencv

RUN pip install --upgrade pip
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN git clone -b v1.0.0-alpha01 https://github.com/joda01/yolov5.git &&\
    cd yolov5/ &&\
    pip install -r requirements.txt