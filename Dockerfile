# Official node image
FROM node:18-alpine

# App directory inside container
WORKDIR /app

# Copy dependencies files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# App runs on this port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

