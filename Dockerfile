FROM python:3.9
RUN git clone https://github.com/lth94/k8s-django.git
WORKDIR /k8s-django
RUN pip install -r /k8s-django/requirements.txt
EXPOSE 8000
RUN python manage.py makemigrations
RUN python manage.py migrate
CMD python manage.py runserver