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

CMD ["python3", "consumer.py"]