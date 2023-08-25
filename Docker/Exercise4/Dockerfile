FROM node:20
WORKDIR /app
COPY . /app
RUN npm install axios
ENV API_URL=https://random-data-api.com/api/v2/banks
CMD node exercise4.js
