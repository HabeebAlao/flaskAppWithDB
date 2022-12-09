# Dockerfile

# Set the base image to Python 3.8
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt and app.py files to the working directory
COPY requirements.txt app.py /app/

# Install the required Python packages
RUN pip install -r requirements.txt

# Expose port 5000 for the Flask app
EXPOSE 5000

# Set the default command to run the Flask app
CMD ["python", "app.py"]
