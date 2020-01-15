var amqp = require('amqplib/callback_api');
var winston = require('./config/winston');

amqp.connect('amqp://localhost', function(error0, connection) {
    if (error0) {
        throw error0;
    }
    connection.createChannel(function(error1, channel) {
        if (error1) {
            throw error1;
        }

        var queue = 'hello';

        channel.assertQueue(queue, {
            durable: false
        });
        winston.info(` [*] Waiting for messages in ${queue}. To exit press CTRL+C`);

        channel.consume(queue, function(msg) {
            winston.info(` [x] Received ${msg.content.toString()}`);
        }, {
            noAck: true
        });
    });
});