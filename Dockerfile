FROM python:3.9
RUN git clone https://github.com/lth94/django.git
WORKDIR /django
RUN pip install -r /django/requirements.txt
EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000