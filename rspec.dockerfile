FROM ruby:alpine
MAINTAINER Nikoloz Jakhua

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ]
