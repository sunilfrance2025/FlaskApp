# Use slim Python base image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency file and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source
COPY app.py .

# Expose port
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
