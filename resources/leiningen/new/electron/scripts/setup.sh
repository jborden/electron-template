#!/bin/bash

# exit on errors
set -e

cd "`dirname $0`/.."

echo; echo "Installing node dependencies..."
if [[ "$OSTYPE" == "darwin"* ]]; then
  npm install
else
  # "grunt-appdmg" is a mac-only dependency that will fail to build on linux.
  # So we are including it as an optionalDependency in package.json
  # and preventing its installation with npm's --no-optional flag.
  npm install --no-optional
fi

echo; echo "Installing grunt and bower..."

npm install grunt-cli bower --save-dev

node_modules/.bin/grunt setup
# odd issue that this must be run twice in order to complete the sub-tasks
# 'ensure-config-exists' and 'run-app-bower' in the 'setup' task. It is needed
# in order to install Twitter bootstrap in the app/resources dir
node_modules/.bin/grunt setup

echo; echo "Setup complete."
