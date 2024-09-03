FROM python:3-alpine

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["gunicorn","-b","0.0.0.0:8000","wsgi"]
