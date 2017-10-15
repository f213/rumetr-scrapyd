FROM python:3.5

WORKDIR /srv
ADD requirements.txt /srv/
RUN pip install -r requirements.txt

ADD scrapyd.conf /srv

CMD ["scrapyd"]