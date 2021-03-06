# message-broker-code-challenge

## Prerequisites

- Docker to run RabbitMQ
- NodeJS and node version 10 or above
- Read tutorial for RabbitMQ [link](https://www.rabbitmq.com/tutorials/tutorial-one-javascript.html)

## Steps

- Download this repository to your local machine
- Run script `docker run -it --rm --name RabbitMQ -p 5672:5672 -p 15672:15672 rabbitmq:3-management`, this will start up your message broker
- Run script `npm run receive` in terminal #1 so that any messages sent are consumed
- Run script `npm run send` in terminal #2 to send your first message
- Run script `MSG='test' npm run send` in terminal #3 to send your first customer message

After running the above you can see the Queue traffic at (http://localhost:15672/).

Login details are:
    username: guest
    pwd: guest

## Run Test

- Run script `npm run receive` in terminal #1
- Run script `npm test` in terminal #2
  - This will clear the logs
  - Then send 10 custom messages
  - And validate they are in the logs

## Challenge

This message broker repository contains both the Producer and the Consumer, with some very basic test.

Your task is to ensure the you can add further test coverage and implement a test framework to test and find any nasty bugs. The bugs might be functional or non-functional.

In addition, ensure you can improve the reporting of the current test framework located in the test folder

## Guidelines

Use your preferred programming language. However, our preferred programming language is
Java or Javascript.

- Submit your solution by creating a new repository on Github with a readme file that details how
to build, Run tests, etc.
- Integrate API Testing code to CI ( eg. circleCI ) such a way that any new commits to code in
Github repository trigger builds and run the API tests.
- Use all coding standards, design patterns, OOPS concepts, etc.
- DO NOT use Qantas Name in your GIT Repositories.
