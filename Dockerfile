FROM python:3.5

WORKDIR /srv
ADD requirements.txt /srv/
RUN pip install -r requirements.txt

ADD scrapyd.conf /srv

EXPOSE 6800
CMD ["scrapyd"]