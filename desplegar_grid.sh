#!/bin/bash

# 1. Limpieza inicial
killall ghostty 2>/dev/null

# 2. Configuración de CAVA (Color Cyan)
mkdir -p ~/.config/cava
[ ! -f ~/.config/cava/config ] && echo "[color]" > ~/.config/cava/config
# Eliminamos cualquier línea de foreground previa y ponemos cyan
sed -i '/^foreground =/d' ~/.config/cava/config
sed -i "/^\[color\]/a foreground = 'cyan'" ~/.config/cava/config

# 3. Configuración de BTOP (Color Cyan + Transparencia Total)
mkdir -p ~/.config/btop
touch ~/.config/btop/btop.conf

# Función para asegurar que las opciones de btop se apliquen sí o sí
set_btop_option() {
    local key=$1
    local value=$2
    if grep -q "^$key =" ~/.config/btop/btop.conf; then
        sed -i "s|^$key =.*|$key = $value|" ~/.config/btop/btop.conf
    else
        echo "$key = $value" >> ~/.config/btop/btop.conf
    fi
}

# Forzamos los 3 ajustes clave para btop
set_btop_option "color_theme" "\"tty\""     # Usa la paleta de Ghostty (Cyan)
set_btop_option "theme_background" "False"  # ELIMINA EL FONDO NEGRO
set_btop_option "truecolor" "True"          # Mejor renderizado de color

# 4. Lanzar las ventanas de Ghostty
# Nota: Usamos 'zsh -is eval' o comandos directos para asegurar que carguen bien
ghostty --title="grid-info"    -e zsh -ic "fastfetch --color cyan; zsh" &
ghostty --title="grid-matrix"  -e zsh -ic "unimatrix -c cyan -n" &
ghostty --title="grid-clock"   -e zsh -ic "tty-clock -s -c -C 6" &
ghostty --title="grid-pipes"   -e zsh -ic "pipes.sh -c 6" &
ghostty --title="grid-monitor" -e zsh -ic "btop" &
ghostty --title="grid-cava"    -e zsh -ic "cava" &

# 5. Esperar a que las ventanas se registren en el sistema de ventanas
sleep 1.2

# 6. Posicionamiento con wmctrl (Ajustado para Grid 3x2)
wmctrl -r "grid-info"    -e 0,1924,4,1002,485
wmctrl -r "grid-matrix"  -e 0,3362,493,474,584
wmctrl -r "grid-clock"   -e 0,2930,4,906,240
wmctrl -r "grid-monitor" -e 0,1924,493,818,584
wmctrl -r "grid-cava"    -e 0,2930,248,906,241
wmctrl -r "grid-pipes"   -e 0,2746,493,612,584
