FROM node:20-slim
WORKDIR /app
COPY package*.json ./
RUN npm ci --production
COPY . .
EXPOSE 4777
ENV PORT=4777
CMD ["node", "server.js"]
