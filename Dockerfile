cat > Dockerfile <<'EOF'
# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy source code
COPY . .

# Expose app port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
EOF

