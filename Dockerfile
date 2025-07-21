FROM node:16

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app files
COPY . .

# Your app’s start command (example)
CMD ["node", "index.js"]
