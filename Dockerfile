FROM python:3

RUN pip install --upgrade pip

RUN mkdir /python
WORKDIR /python
COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt