FROM node:18

# Install n8n globally
RUN npm install -g n8n

# Create n8n home directory
RUN mkdir -p /home/node/.n8n
ENV N8N_USER_FOLDER=/home/node/.n8n

# Expose port
ENV N8N_PORT=5678
EXPOSE 5678

CMD ["n8n"]
