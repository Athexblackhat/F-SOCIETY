#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
NC='\033[0m'
BOLD='\033[1m'
BLINK='\033[5m'

clear

echo -e "${RED}"
cat << "EOF"
███████╗    ███████╗ ██████╗  ██████╗██╗███████╗████████╗  ██╗   ██╗
██╔════╝    ██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝  ╚██╗ ██╔╝
█████╗█████╗███████╗██║   ██║██║     ██║█████╗     ██║      ╚████╔╝ 
██╔══╝╚════╝╚════██║██║   ██║██║     ██║██╔══╝     ██║       ╚██╔╝  
██║         ███████║╚██████╔╝╚██████╗██║███████╗   ██║        ██║   
╚═╝         ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝        ╚═╝
EOF

echo -e "${NC}"

echo -e "${GREEN}${BOLD}"
echo -e "${WHITE}${BLINK}INITIALIZING SYSTEM BREACH${NC}${GREEN}${BOLD} "
echo -e "${NC}"

sleep 1

spin_chars="/-\|"
progress=""
for i in $(seq 1 40); do
    spin_index=$((i % 4))
    char="${spin_chars:$spin_index:1}"
    progress="${progress}█"
    percent=$((i * 5 / 2))
    
    color=$CYAN
    if [ $percent -gt 70 ]; then
        color=$YELLOW
    fi
    if [ $percent -gt 85 ]; then
        color=$RED
    fi
    
    printf "\r${color}[%s] ${BOLD}%d%%${NC}  ${MAGENTA}DECRYPTING...${NC} ${char}" "$progress" "$percent"
    sleep 0.05
done

echo -e "\n"
sleep 0.3

echo -e "${YELLOW}${BOLD}ACCESS GRANTED${NC}"
sleep 0.5

echo -e "${RED}${BOLD}LAUNCHING F-SOCIETY PROTOCOL...${NC}"
sleep 0.8

echo ""
echo -e "${GREEN}${BOLD}>>> EXECUTING f-society.sh <<<${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
sleep 0.5

chmod +x main/f-society.sh 2>/dev/null

./main/f-society.sh 2>/dev/null

if [ $? -ne 0 ]; then
    echo -e "\n${RED}${BOLD}ERROR: f-society.sh execution failed${NC}"
    exit 1
fi

echo ""
echo -e "${GREEN}${BOLD}MISSION COMPLETE${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

exit 0