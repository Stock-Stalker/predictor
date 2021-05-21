"""Get environment variables."""
import os
import dotenv

dotenv.load_dotenv()

consumer_key = os.getenv("Twitter_API_KEY")
consumer_secret = os.getenv("Twitter_SECRET_KEY")

print(consumer_key, consumer_secret)