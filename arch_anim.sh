  GNU nano 8.7.1                                   /home/jesu/.local/share/ascii/arch_anim.sh                                                
#!/bin/bash

CYAN="\e[36m"
RESET="\e[0m"

frames=(
"
   /\
  /  \
 /____\
 |    |
 |____|
"
"
   /\
  /**\
 /____\
 |    |
 |____|
"
)

while true; do
  for f in "${frames[@]}"; do
    clear
    echo -e "${CYAN}${f}${RESET}"
    sleep 0.2
  done
done
