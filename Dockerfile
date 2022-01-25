FROM python:3.9-alpine
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip && \
    pip install -r requirements-dev.txt && \
    pip install . && \
    batuta create-db
# batuta populate-db
# RUN batuta add-user -u admin -p admin
EXPOSE 5000
CMD ["batuta", "run"]
