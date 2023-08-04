# Use Node.js version 14 as the base image

FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the entire source code to the working directory in the container
COPY . .

# Set environment variables for production mode and database host
ENV NODE_ENV=production DB_HOST=item-db

# Install production dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Start the server with the command 'npm start'
CMD ["npm", "start"]