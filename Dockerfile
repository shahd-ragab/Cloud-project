# Use an official Python runtime as the base image
FROM python

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install nltk
RUN python -m nltk.downloader stopwords  punkt

# Run your Python script when the container launches
CMD ["python", "py script"]
