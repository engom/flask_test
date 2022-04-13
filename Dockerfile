FROM ubuntu:20.04

RUN sudo apt-get update && apt-get install python3 python3-pip -y

COPY flask.py requirements.txt ./

RUN pip3 install requirements.txt

CMD ["python3", "-m", "flask.py"]