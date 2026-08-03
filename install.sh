#!/bin/bash
# Instalador de OMNIVID - descarga, configura dependencias y deja listo el comando `omnivid`
# Uso: curl -fsSL https://raw.githubusercontent.com/GerryLCDF/OMNIVID/main/install.sh | bash

set -e

GREEN='\033[1;32m'
CYAN='\033[1;36m'
NC='\033[0m'

echo -e "${CYAN}=== OMNIVID installer ===${NC}"

# --- 1. Crear ~/.local/bin y asegurar PATH ---
mkdir -p "$HOME/.local/bin"
if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
  export PATH="$HOME/.local/bin:$PATH"
  echo -e "${GREEN}-> PATH actualizado en ~/.bashrc${NC}"
fi

# --- 2. Descargar el script ---
echo -e "${CYAN}-> Descargando omnivid...${NC}"
curl -fsSL -o "$HOME/.local/bin/omnivid" \
  https://raw.githubusercontent.com/GerryLCDF/OMNIVID/main/omnivid
chmod +x "$HOME/.local/bin/omnivid"
echo -e "${GREEN}-> omnivid instalado en ~/.local/bin/omnivid${NC}"

# --- 3. Dependencias de Python (rich, browser_cookie3) ---
echo -e "${CYAN}-> Instalando dependencias de Python...${NC}"
python3 -m pip install --user --quiet rich browser_cookie3 || {
  echo "  (pip fallo, instalando por usuario con --break-system-packages)"
  python3 -m pip install --user --break-system-packages --quiet rich browser_cookie3 || echo "  (instala rich y browser_cookie3 manualmente)"
}

# --- 4. yt-dlp + ffmpeg ---
if ! command -v yt-dlp >/dev/null 2>&1; then
  echo -e "${CYAN}-> Instalando yt-dlp...${NC}"
  curl -fsSL -o "$HOME/.local/bin/yt-dlp" \
    https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
  chmod +x "$HOME/.local/bin/yt-dlp"
fi

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo -e "${CYAN}-> Instalando ffmpeg...${NC}"
  if command -v dnf >/dev/null 2>&1; then
    echo -e "${GREEN}-> Ejecuta: sudo dnf install -y ffmpeg${NC}"
  elif command -v apt >/dev/null 2>&1; then
    sudo apt install -y ffmpeg >/dev/null 2>&1
  elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -S --noconfirm ffmpeg >/dev/null 2>&1
  fi
fi

# --- 5. Deno (necesario para resolver desafios JS de YouTube) ---
if ! command -v deno >/dev/null 2>&1 && [ ! -x "$HOME/.deno/bin/deno" ]; then
  echo -e "${CYAN}-> Instalando deno...${NC}"
  curl -fsSL https://deno.land/install.sh | sh -s -- -y >/dev/null 2>&1
  export PATH="$HOME/.deno/bin:$PATH"
fi
if ! grep -q "\.deno/bin" "$HOME/.bashrc" 2>/dev/null; then
  echo 'export PATH="$HOME/.deno/bin:$PATH"' >> "$HOME/.bashrc"
fi

echo
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN} OMNIVID instalado. Abre una terminal nueva${NC}"
echo -e "${GREEN} y ejecuta: omnivid${NC}"
echo -e "${GREEN}========================================${NC}"
