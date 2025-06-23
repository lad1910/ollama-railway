#!/bin/bash

# Set CPU-only mode for Railway (no GPU available)
export OLLAMA_NUM_PARALLEL=1
export OLLAMA_MAX_LOADED_MODELS=1
export OLLAMA_FLASH_ATTENTION=false

# Start Ollama server in background
ollama serve &

# Wait for server to start
sleep 15

# Test if Ollama is responding
curl -f http://localhost:11434/api/tags || echo "Ollama not ready yet"

# Keep the container running
wait
