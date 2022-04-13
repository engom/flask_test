FROM ubuntu:20.04

RUN apt-get update && apt-get install python3 python3-pip -y

COPY hello.py requirements.txt ./

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=hello

CMD ["flask", "run", "--host=0.0.0.0"]