FROM ollama/ollama:latest

# Set environment variables for CPU-only deployment
ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_ORIGINS=*

# Expose the port
EXPOSE 11434

# Create a startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Health check to ensure Ollama is responding
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:11434/api/tags || exit 1

# Use the startup script
CMD ["sh", "/start.sh"]
