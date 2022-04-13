FROM ubuntu:20.04

RUN sudo apt-get update && apt-get install python3 python3-pip -y

COPY hello.py requirements.txt ./

RUN pip3 install requirements.txt

RUN export FLASK_APP=hello

CMD ["flask", "run"]