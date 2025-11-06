# Use a lightweight Node.js image
FROM node:20-alpine
# Set working directory
WORKDIR /app
# Copy only the files needed for dependency installation
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy all remaining source files
COPY . .
# Expose the port your app runs on (default 3000)
EXPOSE 3000
# Command to run the app
CMD ["npm", "start"]
