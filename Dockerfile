FROM python:3.7.3-stretch

WORKDIR /app

COPY .  /app/

RUN pip install --no-cache-dir --upgrade pip==20.0.2 && \
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]
