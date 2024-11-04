FROM python:latest

WORKDIR /app

RUN apt-get update && apt-get upgrade -y

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
