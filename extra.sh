#!/bin/bash

# A data e hora atual
echo "Data e hora: $(date)"

# Uma mensagem aleatória de um arquivo de texto
mensagem=$(shuf -n 1 palavras.txt)
echo "Mensagem aleatória: $mensagem"

# Espaço livre e ocupado no disco rígido em GB
df -h | grep "$(df -h / | awk '{print $1}')" | awk '{print "Espaço livre: " $4, "GB"; print "Espaço ocupado: " $3, "GB"}'

# Espaço livre e ocupado na memória RAM em GB
free -h | awk '/Mem:/ {print "Memória livre: " $4, "GB"; print "Memória usada: " $3, "GB"}'

# Listar arquivos na pasta Downloads
echo "Arquivos na pasta Downloads:"
ls -l ~/Downloads

# Contar o número de imagens, vídeos e arquivos de música na pasta home
echo "Número de imagens na pasta home: $(find ~ -type f -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" | wc -l)"
echo "Número de vídeos na pasta home: $(find ~ -type f -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mkv" | wc -l)"
echo "Número de arquivos de música na pasta home: $(find ~ -type f -iname "*.mp3" -o -iname "*.wav" -o -iname "*.flac" | wc -l)"

