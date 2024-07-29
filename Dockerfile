# Verwende ein offizielles Python-Image als Basis
FROM python:3.9-slim

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die requirements.txt in das Arbeitsverzeichnis
COPY requirements.txt .

# Installiere die Python-Abhängigkeiten
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere den Rest des Anwendungs-Codes in das Arbeitsverzeichnis
COPY . .

# Exponiere den Port, auf dem Streamlit läuft
EXPOSE 8501

# Starte die Streamlit-Anwendung
CMD ["streamlit", "run", "main.py"]