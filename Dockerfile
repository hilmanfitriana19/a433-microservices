# setting base image
FROM node:14.21.3-alpine

# Setting working directory
WORKDIR /app

# Copy all code to working directory
COPY . /app

# Setting environment variables
ENV NODE_ENV=production DB_HOST=item-db 

# Install dependencies
RUN npm install --production --unsafe-perm && npm run build

# Expose Application Port
EXPOSE 8080

# Run the application
CMD ["npm", "start"]
