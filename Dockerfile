# setting base image
FROM node:18-alpine

# Setting working directory
WORKDIR /app

# Copy all code to working directory
COPY . .

# Install dependencies
RUN npm install

# Install bash and wait-for-it.sh
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh    

# Expose Application Port
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]