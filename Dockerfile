FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install python python-setuptools python-dev build-essential python3-pip
RUN pip install flask
COPY hello.py /opt/
COPY templates/index.html /opt/templates/
ENTRYPOINT FLASK_APP=/opt/hello.py flask run --host=0.0.0.0 --port=8080
