FROM joda001/open-bio-image-trainer:v1.0.0

ENV TZ=Europe/Vienna
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN  apt-get update && \
     apt-get install -y python3-pip git python3-opencv

RUN pip install --upgrade pip
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN git clone https://github.com/ultralytics/yolov5.git &&\
    cd yolov5/ &&\
    pip install -r requirements.txt