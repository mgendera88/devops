FROM python:3.11-slim

WORKDIR /app

COPY . .

# Instalacja zależności
RUN pip install --no-cache-dir fastapi uvicorn

# CMD zmieniony, żeby Docker zawsze uruchamiał serwer poprawnie
CMD ["uvicorn", "testapp:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]