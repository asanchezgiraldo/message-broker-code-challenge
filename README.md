# message-broker-code-challange

## Preqequisites

- Docker to run rabbittmq
- nodeJs and node version 10 or above
- Read tutorial for RabbitMQ [link](https://www.rabbitmq.com/tutorials/tutorial-one-javascript.html)

## Steps

- Download this repository to your local machine
- Create a brach with and make a pull request so we can review your challange
- Run script `docker run -it --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3-management`
- Run script `npm run recieve` in terminal #1
- Run script `npm run send` in terminal #2
- Run script `MSG='test' npm run send` in terminal #3

After running the above you can see the Queue traffic at (http://localhost:15672/).

Loggin details are:
    username: guest
    pwd: guest

## Run Test

- Run script `npm run recieve` in terminal #1
- Run script `sh test/unit.sh` in tesrminal #2

## Challange

This message broker repository contains both the Producer and the Consumer, with some very basic test.

Your task is to ensure the you can add further test coverage, and imlpement a test framework to test and find any nasty bugs. The bugs might be functional or none functional.

In addition, ensure you can improve the reporting of the current test framwork located in the test folder
