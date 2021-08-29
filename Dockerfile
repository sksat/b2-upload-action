FROM python:3.9.6-alpine3.14
LABEL maintainer "sksat <sksat@sksat.net>"

COPY requirements.txt .
RUN pip install -r requirements.txt

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
