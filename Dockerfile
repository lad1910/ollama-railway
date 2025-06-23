FROM ollama/ollama:latest

# Set environment variables for CPU-only deployment
ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_ORIGINS=*
ENV OLLAMA_NUM_PARALLEL=1
ENV OLLAMA_MAX_LOADED_MODELS=1
ENV OLLAMA_FLASH_ATTENTION=false

# Expose the port
EXPOSE 11434

# Create a startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Use the startup script
CMD ["/start.sh"]
