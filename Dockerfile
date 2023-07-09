
# Dockerfile for building the project

# Base image for Node.js
FROM node:18 AS node

# Set the working directory
WORKDIR /workspace

# Install yarn
RUN npm install -g yarn

# Base image for Python
FROM python:3.10 AS python

# Copy source code to the working directory
COPY src /workspace

# Install Python dependencies
RUN pip install -r requirements.txt
