FROM python:3.13.2
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT ["gunicorn","--bind", "0.0.0.0:5000", "app:app"]