import pika
import time
import os

def get_rabbitmq_connection():
    retry_attempts = 5
    wait_time = 5  # seconds

    for attempt in range(retry_attempts):
        try:
            connection = pika.BlockingConnection(
                pika.ConnectionParameters(
                    host=os.getenv('RABBITMQ_HOST'),
                    credentials=pika.PlainCredentials(
                        os.getenv('RABBITMQ_USER'),
                        os.getenv('RABBITMQ_PASS')
                    )
                )
            )
            return connection
        except Exception as e:
            print(f"Attempt {attempt + 1} failed: {e}")
            time.sleep(wait_time)
    
    raise Exception("Failed to connect to RabbitMQ after several attempts.")
