FROM python:3.8-alpine

ENV PYTHONDONTWRITEBYTECODE=1

COPY . /app
WORKDIR /app

RUN pip install flask

CMD ["flask", "run", "--host=0.0.0.0"]
