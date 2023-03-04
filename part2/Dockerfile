
FROM python:3.9-slim-buster

COPY . /app
WORKDIR /app

COPY requirements.txt .

Run pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
#COPY filedisplayed.txt .

ENV FLASK_APP=app.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]