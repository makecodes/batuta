FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_start create-db
RUN flask_start populate-db
RUN flask_start add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_start", "run"]
