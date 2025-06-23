#!/bin/bash
echo "Starting Ollama on port ${PORT:-11434}..."

# Set the host environment variable instead of using --host flag
export OLLAMA_HOST="0.0.0.0:${PORT:-11434}"

# Start Ollama
exec ollama serve
