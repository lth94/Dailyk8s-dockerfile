FROM python:3.9
RUN git clone https://github.com/lth94/Dailyk8s-django.git
WORKDIR /Dailyk8s-django
RUN pip install -r /Dailyk8s-django/requirements.txt
EXPOSE 8001
CMD python manage.py runserver 0.0.0.0:8001