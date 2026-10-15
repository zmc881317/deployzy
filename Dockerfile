FROM node:20-alpine
WORKDIR /app
RUN apk add --no-cache curl ca-certificates
COPY package.json ./
RUN npm install --omit=dev
COPY index.js ./
EXPOSE 7609
CMD ["npm", "start"]
