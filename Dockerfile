# Używamy lekkiego obrazu Pythona
FROM python:3.9-slim

# Ustawiamy folder roboczy
WORKDIR /app

# Kopiujemy plik z wymaganiami i instalujemy biblioteki
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiujemy resztę plików aplikacji
COPY . .

# Otwieramy port, na którym działa Streamlit
EXPOSE 8501

# Komenda startowa
CMD ["streamlit", "run", "erfyo_test.py", "--server.port=8501", "--server.address=57.128.247.55"]