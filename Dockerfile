FROM jjanzic/docker-python3-opencv
RUN apt-get update && apt-get install libgl1
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
#CMD ["python", "run.py", "--prototxt mobilenet_ssd/MobileNetSSD_deploy.prototxt", "--model mobilenet_ssd/MobileNetSSD_deploy.caffemodel", "--input videos/example_01.mp4"]
