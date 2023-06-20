# Base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the project files to the container
COPY . /app

# Install dependencies
# Run the get_weights.sh script to download pre-trained weights
RUN ./scripts/get_weights.sh

# Expose the application port
EXPOSE 8000

# Run the Cog application
CMD ["cog", "-p", "8000"]
