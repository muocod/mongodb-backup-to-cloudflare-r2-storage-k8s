FROM mongo:latest

# Install AWS CLI
RUN apt-get update && apt-get install -y awscli

# Copy the backup script
COPY backup.sh /usr/local/bin/backup.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/backup.sh"]