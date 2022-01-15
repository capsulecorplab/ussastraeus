#!/bin/sh

# Run Hugo server
docker run --rm --volume $PWD:/src -p 1313:1313 -w "/src" peaceiris/hugo:v0.92.0-full serve --bind=0.0.0.0 --buildDrafts --disableFastRender --destination public
