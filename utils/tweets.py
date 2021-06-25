"""Get environment variables."""
import os
import dotenv

dotenv.load_dotenv()

consumer_key = os.getenv("TWITTER_API_KEY")
consumer_secret = os.getenv("TWITTER_SECRET_KEY")
