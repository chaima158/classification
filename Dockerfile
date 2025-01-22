# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /classification

# Copy the requirements file into the container at /projectinit
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt


# Copy the rest of the ressources code into the container
COPY . .

# Command to run the data processing script
CMD python main.py