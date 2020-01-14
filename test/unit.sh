#!/bin/bash
# Send Message and validate that this is showing in the logs
counter=1
while [ $counter -le 10 ]; do
    MSG='message number: '$counter npm run send
    if grep -q 'message number: '$counter $(pwd)"/app/logs/combined.log"; then
        echo "Message has bee revieved as per logs"
    else
        exit 1
    fi
    ((counter++))
done

echo All done
