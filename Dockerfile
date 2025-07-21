FROM ubuntu
WORKDIR /app
# Copy all files into the container
COPY . /app
RUN apt-get update && apt-get install -y bash
RUN chmod +x addition.sh
# Set default command to run the script
ENTRYPOINT  ["sh", "addition.sh"]

