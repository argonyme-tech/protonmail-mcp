FROM node:20-slim

WORKDIR /app

RUN npm install -g supergateway

COPY package*.json ./
RUN npm ci --only=production

COPY . .

EXPOSE 3000

RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]
