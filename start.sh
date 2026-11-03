#!/bin/bash

# 1. Inicia o playitd em segundo plano
playitd --socket-path /tmp/playit.sock --secret-path /home/codespace/.config/playit_gg/playit.toml &
PLAYIT_PID=$!
echo "Playit iniciado em segundo plano (PID: $PLAYIT_PID)."

# 2. Inicia o script keep-alive em segundo plano
/workspaces/lsd/keep-alive.sh &
KEEPALIVE_PID=$!
echo "Keep-alive iniciado em segundo plano (PID: $KEEPALIVE_PID)."

# 3. Inicia o Crafty em primeiro plano (mantendo o processo principal ativo)
/workspaces/servidor/minecraft/run_crafty.sh
