#!/bin/bash
echo "[start] Arrancando MCP server en puerto 3000..."
exec supergateway \
    --stdio "node /app/index.js" \
    --port 3000 \
    --baseUrl "/" \
    --healthEndpoint /health
