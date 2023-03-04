FROM python:latest

COPY . /app
WORKDIR /app

Run pip install --upgrade pip
Run pip install -r requirements.txt


CMD ["python", "app.py"]