# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 5000 for the Flask application
EXPOSE 5000

# Set environment variable to ensure unbuffered output
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "app.py"]
