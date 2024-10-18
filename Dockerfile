FROM ubuntu:latest
MAINTAINER Diem Phung "phungb2112000@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-venv python3-dev build-essential

ADD . /flask_app
WORKDIR /flask_app

# Create venv
RUN python3 -m venv venv

# Call pip from within the venv
RUN ./venv/bin/pip install -r requirements.txt

# run
ENTRYPOINT ["./venv/bin/python3", "flask_docker.py"]
