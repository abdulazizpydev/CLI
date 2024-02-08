FROM python:3.8.13-slim-buster
WORKDIR /app
COPY ./CLI ./

RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
# CMD [ "python3","manage.py","runserver","0.0.0.0:8000"]
CMD [ "gunicorn","CLI.core.wsgi:application","--bind","0.0.0.0:8000"]