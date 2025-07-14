#!/bin/bash
# Test the BaoAgent LLM server (Ollama Edition)

echo "🧪 Testing BaoAgent LLM Server (Ollama Edition)..."

# Test if Ollama server is running
if curl -s http://localhost:11434/api/tags > /dev/null; then
    echo "✅ Ollama server is running"
    
    # Test generate endpoint
    echo "Testing generate endpoint..."
    curl -s http://localhost:11434/api/generate -d '{
        "model": "gemma3:12b-it-qat",
        "prompt": "Hello from BaoAgent!",
        "stream": false
    }'
    echo
else
    echo "❌ Ollama server not running. Start it with: ./scripts/start_server.sh"
fi
