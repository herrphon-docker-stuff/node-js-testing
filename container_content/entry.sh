#!/bin/bash -xe

# install required modules of package.json
npm install

# run the tests
npm test

# start the app
npm start
