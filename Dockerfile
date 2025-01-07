FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Install git and other required tools
RUN apt-get update && apt-get install -y git && apt-get clean

# Copy the project files
COPY . /app/

# Upgrade pip and install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Expose the necessary port
EXPOSE 8080

# Set the command to run the bot
CMD ["python", "bot.py"]