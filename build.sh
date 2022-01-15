#!/bin/sh

# Install node modules
docker run --rm --volume $PWD:/src -p 1313:1313 -w "/src" node:16.13.2-alpine3.15 npm ci

# Run Hugo build
docker run --rm --volume $PWD:/src -p 1313:1313 -w "/src" peaceiris/hugo:v0.92.0-full --minify -v --destination public
