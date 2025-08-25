FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8080 8501
CMD ["bash", "-lc", "uvicorn src.neurovisionx.serving.api:app --host 0.0.0.0 --port 8080"]
