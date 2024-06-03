FROM python:3.9.18-slim-bullseye
WORKDIR /app
COPY ./ /app/
RUN pip install --no-cache-dir -r requirements.txt
ENV TELEGRAM_BOT_API_KEY="7061150538:AAFS9JnMrvKzWRAszgFYkruCUVzUcg3By3U"
ENV GEMINI_API_KEYS="AIzaSyDvqDthwpxAhMu-Ms35-EJ14s_6T2MloZA"
CMD ["sh", "-c", "python main.py ${TELEGRAM_BOT_API_KEY} ${GEMINI_API_KEYS}"]
