FROM python:slim-bullseye

# Install build dependencies and pkg-config
RUN apt-get update \
  && apt-get install -y --no-install-recommends --no-install-suggests \
     build-essential \
     pkg-config \
  && rm -rf /var/lib/apt/lists/* \
  && pip install --no-cache-dir --upgrade pip

WORKDIR /app
COPY ./requirements.txt /app
RUN pip install --no-cache-dir --requirement /app/requirements.txt
COPY . /app

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

EXPOSE 8080

CMD ["python3", "server.py"]