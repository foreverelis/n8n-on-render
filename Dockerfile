# Start with Node.js base
FROM node:18

# Set working directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Create a directory for n8n user data
RUN mkdir -p /root/.n8n

# Expose port n8n runs on
EXPOSE 5678

# Set environment variables (you can override from Render too)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=versionaipro
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://versionaipro.onrender.com

# Start n8n
CMD ["n8n"]
