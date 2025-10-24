FROM python:3.12-slim

# Prevent Python from writing .pyc files & buffer output
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

# Railway injects PORT automatically
EXPOSE 8000
ENV PORT=8000

CMD ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:${PORT}"]
