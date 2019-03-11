FROM python:3
ADD __main__.py /
COPY requirements.txt /opt/app/requirements.txt
WORKDIR /opt/app
RUN pip install -r requirements.txt
COPY . /opt/app
CMD [ "python", "./python \_\_main\_\_.py -H 0.0.0.0" ]