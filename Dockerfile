FROM ollama/ollama:latest

# Set environment variables for Railway
ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_ORIGINS=*

# Expose the port
EXPOSE 11434

# Start Ollama directly (no script needed)
CMD ["ollama", "serve"]
