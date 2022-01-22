FROM python:3.9-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN batuta create-db
RUN batuta populate-db
RUN batuta add-user -u admin -p admin
EXPOSE 5000
CMD ["batuta", "run"]
