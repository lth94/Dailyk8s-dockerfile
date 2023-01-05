FROM python:3.9
RUN mkdir /apps
WORKDIR /apps
ADD * /apps/
RUN pip install -r /apps/requirements.txt
EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000