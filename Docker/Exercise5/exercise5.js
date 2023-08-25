const employeeData = [{
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
  }, {
    "id": 6,
    "first_name": "Granthem",
    "last_name": "Klimentyonok",
    "email": "gklimentyonok5@360.cn",
    "gender": "Male",
    "ip_address": "156.148.250.137"
  }, {
    "id": 7,
    "first_name": "Artemus",
    "last_name": "Yeatman",
    "email": "ayeatman6@yelp.com",
    "gender": "Male",
    "ip_address": "204.200.168.85"
  }, {
    "id": 8,
    "first_name": "Kenn",
    "last_name": "Ballentime",
    "email": "kballentime7@telegraph.co.uk",
    "gender": "Male",
    "ip_address": "253.228.213.83"
  }, {
    "id": 9,
    "first_name": "Dicky",
    "last_name": "Slayford",
    "email": "dslayford8@irs.gov",
    "gender": "Male",
    "ip_address": "206.149.154.167"
  }, {
    "id": 10,
    "first_name": "Sharyl",
    "last_name": "Mandrake",
    "email": "smandrake9@umich.edu",
    "gender": "Female",
    "ip_address": "184.195.221.50"
  }]

const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send(employeeData);
});

app.listen(3000, () => {
  console.log(`Server is running on port 3000`);
});
