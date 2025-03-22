#!/bin/bash

# Install dependencies
npm install

# Build the project with the OpenAI API key
VITE_OPENAI_API_KEY=$OPENAI_API_KEY npm run build

# Start the server
docker build -t chartdb .
docker run -e OPENAI_API_KEY=$OPENAI_API_KEY -p 8080:80 chartdb