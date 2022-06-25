FROM python:3.6
RUN pip3 install --upgrade pip
RUN mkdir /app
WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

RUN python  model.py

