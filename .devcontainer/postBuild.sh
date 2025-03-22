#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Install dependencies
npm install

# Build the project with the OpenAI API key
export VITE_OPENAI_API_KEY=$OPENAI_API_KEY
npm run build