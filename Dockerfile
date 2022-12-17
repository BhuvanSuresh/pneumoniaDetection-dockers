FROM python:3.9.7

ENV PYTHONUNBUFFERED 1

WORKDIR /aiproject

ADD . /aiproject

COPY ./requirements.txt /aiproject/requirements.txt

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["python","manage.py","runserver","0.0.0.0:8000"]