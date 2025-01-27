FROM ubuntu:latest
  
# Set the working directory in the image
WORKDIR /hello

# Copy the files from the host file system to the image file system
COPY . /hello

# Install the necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip


# Run a command to start the application
CMD ["python3", "hello.py"]
