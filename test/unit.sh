#!/bin/bash
# Feature: Send and log message

# Scenarion: Send 10 messages and validate that they are showing in the logs

counter=1
while [ $counter -le 10 ]; do
    # When I send a customer message
    MSG='message number: '$counter npm run send
    
    # Then I can see the message in the logs
    if grep -q 'message number: '$counter $(pwd)"/app/logs/combined.log"; then
        echo "Message has bee received as per logs"
    else
        exit 1
    fi

    # And i can move to the next iteration
    ((counter++))
done

echo All done
