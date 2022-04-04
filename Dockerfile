FROM python:3.10.4-alpine3.14
LABEL maintainer "sksat <sksat@sksat.net>"

COPY requirements.txt .
RUN pip install -r requirements.txt

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
