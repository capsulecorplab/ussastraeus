#!/bin/sh

# Install node modules
if [ ! -r ./node_modules ]; then
    docker run --rm --volume $PWD:/src -p 1313:1313 -w "/src" node:16.13.2-alpine3.15 npm i
fi

# Run Hugo build
if [ ! -r ./public ]; then
    docker run --rm --volume $PWD:/src -p 1313:1313 -w "/src" peaceiris/hugo:v0.92.0-full --minify -v --destination public
fi
