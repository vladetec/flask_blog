FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_blog create-db
RUN flask_blog populate-db
RUN flask_blog add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_blog", "run"]
