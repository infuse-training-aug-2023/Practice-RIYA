const data = [{
    "id": 1,
    "first_name": "Aarika",
    "last_name": "Dougill",
    "email": "adougill0@xrea.com",
    "gender": "Female",
    "ip_address": "85.104.239.191"
  }, {
    "id": 2,
    "first_name": "Ivonne",
    "last_name": "Boxe",
    "email": "iboxe1@360.cn",
    "gender": "Female",
    "ip_address": "57.28.26.122"
  }, {
    "id": 3,
    "first_name": "Carolan",
    "last_name": "Blundon",
    "email": "cblundon2@jimdo.com",
    "gender": "Female",
    "ip_address": "246.149.72.175"
  }, {
    "id": 4,
    "first_name": "Emmalynn",
    "last_name": "Elph",
    "email": "eelph3@opera.com",
    "gender": "Female",
    "ip_address": "241.18.83.24"
  }, {
    "id": 5,
    "first_name": "Hector",
    "last_name": "Cafe",
    "email": "hcafe4@whitehouse.gov",
    "gender": "Male",
    "ip_address": "42.32.21.15"
  }]

const express = require('express');
const app = express();
const port = 5000;
const CORS = require("cors")

app.use(CORS())

app.get('/', (req, res) => {
  res.send(data);
});

app.listen(port, () => {
  console.log(`Backend server is running on port ${port}`);
});
