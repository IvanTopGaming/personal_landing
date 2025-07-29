FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

CMD ["sh", "-c", "npx tailwindcss -i ./public/styles/tailwind.css -o ./public/styles/style.css && node src/index.js"]
