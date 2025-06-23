#!/bin/bash
set -e

echo "Starting Ollama service..."

# Set CPU-only mode for Railway
export OLLAMA_NUM_PARALLEL=1
export OLLAMA_MAX_LOADED_MODELS=1
export OLLAMA_FLASH_ATTENTION=false

# Start Ollama server in foreground (not background)
exec ollama serve
