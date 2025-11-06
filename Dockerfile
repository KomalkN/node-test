# Use a lightweight Node.js image
FROM node:20-alpine
# Set working directory
WORKDIR /app
# Copy only dependency files first (for caching)
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the source files
COPY . .
# Expose the port your app runs on (default 3000)
EXPOSE 3000
# Run the app
CMD ["npm", "start"]
# Optional — If you only want to test .env content printed
# CMD ["sh", "-c", "echo 'Container running...'; echo 'Env content:'; cat .env"]