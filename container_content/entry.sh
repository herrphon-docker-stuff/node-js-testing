#!/bin/bash -xe

npm install

echo "Starting webserver in 3 seconds..."
sleep 3

npm test

echo npm start
