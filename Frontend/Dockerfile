# Dockerfile in ./frontend
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5173

# Serve frontend with Vite on all network interfaces
CMD ["npm", "run", "dev", "--", "--host"]
