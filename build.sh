#!/bin/bash

# Load environment variables from .env file if it exists
if [ -f .env ]; then
    source .env
fi

# Build the Docker image with build arguments
docker build \
    --build-arg PACT_BROKER_BASIC_AUTH_USERNAME="${PACT_BROKER_BASIC_AUTH_USERNAME}" \
    --build-arg PACT_BROKER_BASIC_AUTH_PASSWORD="${PACT_BROKER_BASIC_AUTH_PASSWORD}" \
    --build-arg PACT_BROKER_EXTERNAL_URL="${PACT_BROKER_EXTERNAL_URL}" \
    -t pact-broker:latest .