#!/usr/bin/env sh

cd /code

if [ "$START_ENV" = "development" ]; then
    echo "Starting in DEVELOPMENT mode";
    echo "";

    npm install;
    [ "$NODE_ENV" = "production" ] && npm install --only=dev;

    if [ "$INSPECT" = "break" ]; then
        INSPECTOR="--inspect-brk=0.0.0.0"
    elif [ "$INSPECT" = "enable" ]; then
        INSPECTOR="--inspect=0.0.0.0"
    fi;

    nodemon \
        "$INSPECTOR" \
        --legacy-watch \
        --watch server \
        --watch app.js \
        --watch server/config.yml \
        app.js
else
    node app.js
fi;
