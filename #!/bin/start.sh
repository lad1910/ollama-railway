#!/bin/bash

# Start Ollama server in background
ollama serve &

# Wait for server to start
sleep 10

# Pull a default model (optional - you can skip this to save deployment time)
# ollama pull llama3.2:3b

# Keep the container running
wait
