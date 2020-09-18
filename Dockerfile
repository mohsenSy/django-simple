FROM python:3.8-slim
RUN mkdir -p /app
COPY simple /app/
WORKDIR /app
RUN apt-get update && apt-get install libmariadb-dev build-essential -y --no-install-recommends
RUN pip install -r requirements.txt
EXPOSE 3000
CMD ["python", "manage.py", "runserver", "0.0.0.0:3000"]
