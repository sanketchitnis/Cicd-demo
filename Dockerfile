# Use an official Ubuntu image with GCC pre-installed
FROM ubuntu:latest

# Install required dependencies
RUN apt update && apt install -y build-essential

# Set the working directory inside the container
WORKDIR /app

# Copy source code and Makefile to the container
COPY factorial.c Makefile /app/

# Compile the C program
RUN make

# Define the entry point (run the factorial program)
CMD ["./factorial"]
