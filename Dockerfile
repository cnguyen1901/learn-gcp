FROM python:3.9
RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*
RUN pip install flask flask_sqlalchemy mysqlclient Flask_Migrate pytest
WORKDIR /app
COPY . .
ENV PYTHONDONTWRITEBYTECODE=1
EXPOSE 8080
CMD ["python", "app.py"]