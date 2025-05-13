
FROM python:3.8


WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY server.py .

EXPOSE 8000

CMD ["python", "server.py"]


# ADD server.py .

# # Copy dependency list
# COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt

# # Expose the port your Flask app uses
# EXPOSE 8000


# # Run your app
# CMD ["python", "server.py"]