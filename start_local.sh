#!/bin/bash

echo "Pulling redoc image"
docker pull redocly/redoc

echo "Exposing yml file on port 10000!"
docker run -itd --rm -p 10000:80 -v $(pwd)/swagger.yml:/usr/share/nginx/html/swagger.yml -e SPEC_URL=swagger.yml redocly/redoc

echo "Starting redoc UI renderer and exposing on port 80"
docker run -itd --rm -p 80:80 -e SPEC_URL='http://localhost:10000/swagger.yml' redocly/redoc
