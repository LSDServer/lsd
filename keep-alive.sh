#!/bin/bash

# Intervalo de 600 segundos (10 minutos)
INTERVALO=600

echo "=== Script Keep-Alive iniciado (Intervalo de 10 minutos) ==="
echo "Pressione Ctrl+C para parar."

while true; do
    date +"[%Y-%m-%d %H:%M:%S] Mantendo o Codespace ativo..."
    
    # Se tiver um app rodando na porta do projeto, descomente abaixo:
    # curl -s http://localhost:3000 > /dev/null

    sleep "$INTERVALO"
done
