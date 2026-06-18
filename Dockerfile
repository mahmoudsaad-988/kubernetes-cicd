FROM node:14

WORKDIR /app

# Copy package files first
COPY source/package*.json ./
RUN npm install

# Copy source code
COPY source/ ./

EXPOSE 3000

CMD ["node", "app.js"]
