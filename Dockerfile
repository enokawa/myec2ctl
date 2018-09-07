FROM ruby:2-alpine

RUN ["gem", "install", "ec2ctl"]

ENTRYPOINT ["ec2ctl"]
