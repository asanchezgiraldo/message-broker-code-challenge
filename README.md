# message-broker-code-challange

## Preqequisites

- Docker to run rabbittmq
- nodeJs ( node version 10 or above )
- Read tutorial for RabbitMQ (https://www.rabbitmq.com/tutorials/tutorial-one-javascript.html)
## Steps

- Download this repository to your local machine
- Run script `docker run -it --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3-management`
- Run script `npm run recieve`
- Run script `npm run send`
- Run script `MSG='test' npm run send`
