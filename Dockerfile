FROM python:3.9
RUN mkdir /apps
RUN apt install -y wget
WORKDIR /apps
ADD requirements.txt /apps/
RUN pip install -r /apps/requirements.txt
ADD wget https://github.com/lth94/django/** /apps
EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000