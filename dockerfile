FROM node:16

WORKDIR /app

# Copy the package.json and package-lock.json first (for better layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install && npm install express

# Copy the rest of the application files
COPY . .

# Expose port 3000 (the port the app listens on)
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
