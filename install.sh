#! /bin/bash

# Current path
currentPath=$(realpath ./)

# Install Meteorjs
curl https://install.meteor.com/ | sh
export PATH=/home/bas/.meteor:$PATH

# Install demeteorizer
cd ~/ && npm install demeteorizer

# Go back to our project
cd "$currentPath"

# Note: When using "meteorhacks:npm"
# to prevent the error: "unknown package: npm-container"
# (described in https://github.com/meteorhacks/npm/issues/49)
# uncomment the two following lines:
#meteor remove npm-container
#meteor run

# demeteorize the app
~/node_modules/.bin/demeteorizer -a "app_a73cbfb4-43da-419f-8d33-34d6f5d0b5bd" -o my_app/

# Go inside our demeteorized app to install modules
cd my_app/

# Install modules
npm install


// Install PhantomJS in the server
  "setupPhantom": true,