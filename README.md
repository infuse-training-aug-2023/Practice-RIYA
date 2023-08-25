# Practice-RIYA
# COMMANDS USED FOR EXERCISES

# EXERCISE 1:
FROM python:3
RUN pip install numpy
CMD python exercise1.py 10.0 5.0

docker build -t exercise1.py
docker run arraymanipulation1
--------------------------------------------------------------------------
# EXERCISE 2: 
FROM ruby:3.0
RUN gem install faker json
ENV COMPANY_NAME='Infuse'
CMD ["ruby","exercise2.rb","10"]

docker build -t exercise2.rb
docker run datagenerator
--------------------------------------------------------------------------
# EXERCISE 3:
FROM ruby:3
RUN gem install test-unit
CMD ruby test.rb

docker build -t exercise3.rb
docker run unitest
--------------------------------------------------------------------------
# EXERCISE 4:
FROM node:20
RUN npm install axios
ENV API_URL=https://random-data-api.com/api/v2/banks
CMD node exercise4.js

docker build -t exercise4.rb
docker run datafetch1
--------------------------------------------------------------------------
# EXERCISE 5:
FROM node:20
RUN npm install
EXPOSE 3000
CMD node exercise5.js

docker build -t exercise5.js
docker run exercise5
--------------------------------------------------------------------------
# EXERCISE 6:
## Dockerfile for frontend (myapp):
FROM node:20
RUN npm i
EXPOSE  3000
CMD npm start

## Dockerfile for backend server:
FROM node:20
RUN npm install 
EXPOSE  3000
CMD node server.js

## Docker Compose Commands:
docker compose up



