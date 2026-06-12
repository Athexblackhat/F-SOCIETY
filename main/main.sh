#!/bin/bash

# ============================================
# F-SOCIETY MATRIX INTERFACE
# Version: 3.0 Enhanced
# Developer: ATHEX BLACK HAT x ALTHEA BLACK HAT
# ============================================
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly CYAN='\033[0;36m'
readonly BLUE='\033[0;34m'
readonly PURPLE='\033[0;35m'
readonly WHITE='\033[1;37m'
readonly BOLD='\033[1m'
readonly BLINK='\033[5m'
readonly NC='\033[0m'
clear
tput civis 2>/dev/null
cleanup() {
    tput cnorm 2>/dev/null
    echo -e "${NC}"
    clear
}
trap cleanup EXIT SIGINT SIGTERM
matrix_effect() {
    local duration=$1
    local start_time=$(date +%s)
    local chars=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "A" "B" "C" "D" "E" "F" "あ" "い" "う" "え" "お")
    local rows=$(tput lines 2>/dev/null || echo 24)
    local cols=$(tput cols 2>/dev/null || echo 80)
    echo -e "${GREEN}"
    while [ $(($(date +%s) - start_time)) -lt $duration ]; do
        local col=$((RANDOM % cols))
        local row=$((RANDOM % rows))
        local char=${chars[$((RANDOM % ${#chars[@]}))]}
        tput cup $row $col 2>/dev/null
        echo -ne "${GREEN}${char}${NC}"
        
        sleep 0.03
    done
    clear
}
hacking_progress() {
    echo -e "${BLUE}"
    echo "              ⚡ INITIATING SYSTEM SEQUENCE ⚡                "
    echo -e "${NC}"
    
    local tasks=(
        "BYPASSING FIREWALL"
        "ACCESSING MAINFRAME"
        "DECRYPTING DATA"
        "EXTRACTING FILES"
        "COMPILING PAYLOAD"
        "ESTABLISHING BACKDOOR"
    )
    
    for task in "${tasks[@]}"; do
        echo -ne "${CYAN}[*] ${task} ${NC}"
        for i in $(seq 1 20); do
            echo -ne "${GREEN}█${NC}"
            sleep 0.05
        done
        echo -e " ${GREEN}✓${NC}"
        sleep 0.3
    done
    echo
}
loading_animation() {
    local message="$1"
    local duration="$2"
    local spinstr='|/-\'
    local delay=0.1
    echo -ne "${CYAN}[ ] ${message}${NC}"
    local end_time=$(($(date +%s) + duration))
    while [ $(date +%s) -lt $end_time ]; do
        for ((i=0; i<${#spinstr}; i++)); do
            local temp=${spinstr:$i:1}
            printf "\r${CYAN}[%c] ${message}${NC}" "$temp"
            sleep $delay
        done
    done
    printf "\r${GREEN}[✓] ${message} - Complete!${NC}\n"
}
display_fsociety() {
    echo -e "${RED}"
    cat << "EOF"

⠀⠀⠀⠀⢀⣠⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣀⠀⠀⠀⠀ 
⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀
⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠈⢻⣿⠿⠛⠛⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠛⠛⠛⠻⣿⣿⠋⠀
⠛⠁⢸⣥⣴⣾⣿⣷⣦⡀⠀⠈⠛⣿⣿⠛⠋⠀⢀⣠⣾⣿⣷⣦⣤⡿⠈⢉
⢋⣩⣼⡿⣿⣿⣿⡿⠿⢿⣷⣤⣤⣿⣿⣦⣤⣴⣿⠿⠿⣿⣿⣿⢿⣷⣬⣉
⣿⣿⣿⣷⣿⡟⠁⠀⠀⠀⠈⢿⣿⣿⣿⢿⣿⠋⠀⠀⠀⠈⢻⣿⣧⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣥⣶⣶⣶⣤⣴⣿⡿⣼⣿⡿⣿⣇⣤⣴⣶⣶⣾⣿⣿⣿⣿⣿
⣿⣿⡿⢛⣿⣿⣿⣿⣿⣿⡿⣯⣾⣿⣿⣿⣮⣿⣿⣿⣿⣿⣿⣿⡟⠿⣿⣿
⣿⡏⠀⠸⣿⣿⣿⣿⣿⠿⠓⠛⢿⣿⣿⡿⠛⠛⠻⢿⣿⣿⣿⣿⡇⠀⠹⣿
⣿⡁⠀⠀⠈⠙⠛⠉⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠈⠙⠛⠉⠀⠀⠀⣿⣿
⠛⢇⠀⠀⠀⠀⠀⠀⠀⠀ATHEX x ALTHEA⠀⠀   ⠀⡸⠛⣿
⠀⠈⢳⣶⣤⣤⣤⣤⡄⠀⠀⠠⠤⠤⠤⠤⠤⠀⠀⢀⣤⣤⣤⣤⣴⣾⠃⠀
⠀⠀⠈⣿⣿⣿⣿⣿⣿⣦⣀⡀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣿⣿⣿⣿⠇⠀⠀
⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀
⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀
⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀
EOF
    echo -e "${NC}"
}
glitch_effect() {
    local text="$1"
    local iterations=3
    
    for ((i=0; i<iterations; i++)); do
        echo -ne "\r${RED}${text}${NC}"
        sleep 0.1
        echo -ne "\r${GREEN}${text}${NC}"
        sleep 0.1
        echo -ne "\r${BLUE}${text}${NC}"
        sleep 0.1
    done
    echo -e "\r${WHITE}${text}${NC}"
    echo
}
check_and_run_script() {
    local next_script=""
    if [ -f "/main/run.sh" ]; then
        next_script="run.sh"
    elif [ -f "/main/f-society.sh" ]; then
        next_script="f-society.sh"
    elif [ -f "/main/setup.sh" ]; then
        next_script="setup.sh"
    fi
    if [ -z "$next_script" ]; then
        echo -e "${RED}${NC}"
        echo -e "${RED}${WHITE}      ERROR: No launch script found!                    ${RED}${NC}"
        echo -e "${RED}${NC}"
        echo -e "\n${YELLOW}[!] Available files in directory:${NC}"
        ls -la --color=always 2>/dev/null || ls -la
        return 1
    fi
    if [ ! -x "$next_script" ]; then
        chmod +x "$next_script" 2>/dev/null
    fi
    echo -e "\n${CYAN}[*] Transferring control to: ${WHITE}$next_script${NC}"
    echo -e "${CYAN}[*] Please wait...${NC}"
    sleep 1.5
    
    tput cnorm 2>/dev/null
    clear
    exec bash "$next_script"
}
echo -e "${CYAN}"
cat << "EOF"
 █████╗ ████████╗██╗  ██╗███████╗██╗  ██╗    ██╗  ██╗     █████╗ ██╗  ████████╗██╗  ██╗███████╗ █████╗ 
██╔══██╗╚══██╔══╝██║  ██║██╔════╝╚██╗██╔╝    ╚██╗██╔╝    ██╔══██╗██║  ╚══██╔══╝██║  ██║██╔════╝██╔══██╗
███████║   ██║   ███████║█████╗   ╚███╔╝      ╚███╔╝     ███████║██║     ██║   ███████║█████╗  ███████║
██╔══██║   ██║   ██╔══██║██╔══╝   ██╔██╗      ██╔██╗     ██╔══██║██║     ██║   ██╔══██║██╔══╝  ██╔══██║
██║  ██║   ██║   ██║  ██║███████╗██╔╝ ██╗    ██╔╝ ██╗    ██║  ██║███████╗██║   ██║  ██║███████╗██║  ██║
╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                                                                       
EOF
echo -e "${NC}"
echo -e "${GREEN}${NC}"
echo -e "${GREEN}${WHITE}              
███████╗    ███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗
██╔════╝    ██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝
█████╗      ███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝ 
██╔══╝      ╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝  
██║         ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║   
╚═╝         ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝   
                                                ${YELLOW}${NC}"
echo -e "${YELLOW}${WHITE}By: ${GREEN}ATHEX BLACK HAT x ALTHEA BLACK HAT${WHITE} ${YELLOW}${NC}"
echo -e "${YELLOW}${NC}"
sleep 2
echo -e "\n${PURPLE}[+] Starting cyber intrusion...${NC}"
sleep 1
matrix_effect 4
hacking_progress
echo -e "${CYAN}[*] Establishing secure connection...${NC}"
glitch_effect "CONNECTION ESTABLISHED - ENCRYPTED CHANNEL ACTIVE"
sleep 1
echo -e "${BLUE}"
echo "  F-SOCIETY PACKAGE INSTALLER   "
echo -e "${NC}"
loading_animation "Downloading components" 3
loading_animation "Verifying signatures" 2
loading_animation "Installing core modules" 3
loading_animation "Configuring system" 2
loading_animation "Optimizing performance" 1
display_fsociety
sleep 1.5
echo -e "${YELLOW}"
cat << "EOF"                                                              
          ⚡ THIS IS THE POWER OF ATHEX BLACK HAT x ALTHEA BLACK HAT ⚡           
                                                              
                        "The terminal never closes.                         
                     The year is just another variable."                
EOF
echo -e "${NC}"
sleep 2
echo -e "\n${CYAN}[*] System Status:${NC}"
echo -e "  ${GREEN}→ Firewall: ${RED}BYPASSED${NC}"
echo -e "  ${GREEN}→ Encryption: ${GREEN}AES-256 ACTIVE${NC}"
echo -e "  ${GREEN}→ Connection: ${GREEN}SECURE${NC}"
echo -e "  ${GREEN}→ Payload: ${YELLOW}READY${NC}"
echo -e "\n${CYAN}[*] Initialization complete.${NC}"
echo -e "${GREEN}[+] Launching primary interface...${NC}"
sleep 2
check_and_run_script
cleanup
exit 0