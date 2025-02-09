# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the app files into the container
COPY app.py .
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir flask

# Run the app
CMD ["python", "app.py"]