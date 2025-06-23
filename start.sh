#!/bin/bash
echo "Starting Ollama on port ${PORT:-11434}..."

# Start Ollama with Railway's port
exec ollama serve --host 0.0.0.0:${PORT:-11434}
