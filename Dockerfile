FROM python:3.12-slim
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY ["index.html", "style.css", "script.js", "./"]
COPY ["Иконки/", "./Иконки/"]
COPY ["Фоновые изображения/", "./Фоновые изображения/"]
USER 10001:10001
EXPOSE 8000
CMD ["python", "-m", "http.server", "8000", "--bind", "0.0.0.0", "--directory", "/app"]
