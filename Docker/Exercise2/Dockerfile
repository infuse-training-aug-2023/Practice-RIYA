FROM ruby:3.0

WORKDIR /app

COPY exercise2.rb .
RUN gem install faker json

ENV COMPANY_NAME='Infuse'


CMD ["ruby","exercise2.rb","10"]
