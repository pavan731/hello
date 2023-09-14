# Use the official Python image as the base image
FROM python:3.8-slim-buster

# Set the working directory within the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt requirements.txt

# Install Python dependencies from requirements.txt
RUN pip install -r requirements.txt

# Copy the entire current directory (where your Flask app resides) into the container
COPY . .

# Expose port 80 for the Flask application
EXPOSE 80

# Start the Flask application on port 80
CMD [ "python", "hello.py" , "0.0.0.0:80" ]
