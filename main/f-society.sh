#!/bin/bash

# ============================================
# F-SOCIETY WELCOME BANNER
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
readonly BLINK='\033[5m'
readonly BOLD='\033[1m'
readonly NC='\033[0m'
clear
tput civis 2>/dev/null
cleanup() {
    tput cnorm 2>/dev/null
    echo -e "${NC}"
}
trap cleanup EXIT SIGINT SIGTERM
echo -e "${GREEN}"
cat << "EOF"
██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗
██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝
██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗  
██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝  
╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗
 ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝
EOF
echo -e "${NC}"
sleep 0.5
echo -e "${YELLOW}"
cat << "EOF"                                                     
__________          ____    
MMMMMMMMMM         6MMMMb   
/   MM   \        8P    Y8  
    MM           6M      Mb 
    MM           MM      MM 
    MM           MM      MM 
    MM           MM      MM 
    MM           MM      MM 
    MM           YM      M9 
    MM            8b    d8  
   _MM_            YMMMM9   
EOF
echo -e "${NC}"

sleep 0.5
echo -e "${RED}"
cat << "EOF"
███████╗    ███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗
██╔════╝    ██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝
█████╗█████╗███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝ 
██╔══╝╚════╝╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝  
██║         ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║   
╚═╝         ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝   
EOF
echo -e "${NC}"
sleep 0.3
echo -e "${CYAN}${NC}"
echo -e "${CYAN}${WHITE}Created By ${GREEN}ATHEX BLACK HAT${WHITE}${CYAN}${NC}"
echo -e "${CYAN}${WHITE}Version: ${YELLOW}3.0${WHITE} | ${GREEN}Enhanced Edition${WHITE}${CYAN}${NC}"
echo -e "${CYAN}${NC}"
echo ""
echo -e "${CYAN}[*] Initializing F-SOCIETY Framework...${NC}"
sleep 0.5
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    while kill -0 "$pid" 2>/dev/null; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}
progress_bar() {
    local current=$1
    local total=$2
    local text=$3
    local percent=$((current * 100 / total))
    local filled=$((current * 40 / total))
    local empty=$((40 - filled))
    
    printf "\r${CYAN}[%-40s] %3d%%${NC}" \
        "$(printf '#%.0s' $(seq 1 $filled))" "$percent"
}
echo -e "\n${YELLOW}Loading System Components:${NC}\n"
modules=(
    "Core Engine"
    "Tool Database"
    "Security Layer"
    "Network Module"
    "Exploit Framework"
    "Web Interface"
    "Android Bridge"
    "Wireless Suite"
    "Forensics Kit"
    "Reporting System"
)

total_modules=${#modules[@]}
for i in $(seq 1 $total_modules); do
    progress_bar $i $total_modules "${modules[$((i-1))]}"
    sleep 0.3
done
echo -e "\n"
echo -e "${GREEN}[+] Loading Complete!${NC}"
sleep 0.5
echo -e "\n${CYAN}[*] Running System Diagnostics...${NC}"
sleep 0.3
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo -e "${GREEN}[✓]${NC} Operating System: ${WHITE}Linux Detected${NC}"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "${YELLOW}[~]${NC} Operating System: ${WHITE}macOS Detected${NC}"
else
    echo -e "${YELLOW}[~]${NC} Operating System: ${WHITE}$OSTYPE${NC}"
fi
sleep 0.2
if ping -c 1 github.com &>/dev/null; then
    echo -e "${GREEN}[✓]${NC} Internet Connection: ${WHITE}Connected${NC}"
else
    echo -e "${RED}[✗]${NC} Internet Connection: ${WHITE}Not Connected${NC}"
fi
sleep 0.2
if command -v git &>/dev/null; then
    echo -e "${GREEN}[✓]${NC} Git: ${WHITE}Installed ($(git --version | cut -d' ' -f3))${NC}"
else
    echo -e "${RED}[✗]${NC} Git: ${WHITE}Not Installed${NC}"
fi
sleep 0.2
if command -v python3 &>/dev/null; then
    echo -e "${GREEN}[✓]${NC} Python3: ${WHITE}Installed ($(python3 --version 2>&1))${NC}"
elif command -v python &>/dev/null; then
    echo -e "${GREEN}[✓]${NC} Python: ${WHITE}Installed ($(python --version 2>&1))${NC}"
else
    echo -e "${RED}[✗]${NC} Python: ${WHITE}Not Installed${NC}"
fi
echo -e "\n${CYAN}[*] Resource Check...${NC}"
sleep 0.3
disk_available=$(df -h . | awk 'NR==2 {print $4}' 2>/dev/null || echo "N/A")
echo -e "${GREEN}[✓]${NC} Disk Available: ${WHITE}$disk_available${NC}"
if command -v free &>/dev/null; then
    mem_available=$(free -h | awk 'NR==2 {print $7}' 2>/dev/null || echo "N/A")
    echo -e "${GREEN}[✓]${NC} Memory Available: ${WHITE}$mem_available${NC}"
fi
echo -e "\n${GREEN}${NC}"
echo -e "${GREEN}${WHITE}              F-SOCIETY IS NOW READY!                         ${GREEN}${NC}"
echo -e "${GREEN}${WHITE}              Launching Main Interface...                     ${GREEN}${NC}"
echo -e "${GREEN}${NC}"
sleep 1
if [ -f "/main/main.sh" ]; then
    chmod +x /main/main.sh
    echo -e "\n${CYAN}[*] Transferring to main interface...${NC}"
    sleep 1
    clear
    tput cnorm 2>/dev/null
    exec ./main/main.sh
elif [ -f "/main/run.sh" ]; then
    chmod +x /main/run.sh
    
    echo -e "\n${CYAN}[*] Transferring to run.sh...${NC}"
    sleep 1
    clear
    
    tput cnorm 2>/dev/null
    exec ./run.sh
else
    echo -e "\n${RED}[✗] Error: No main script found!${NC}"
    echo -e "${YELLOW}[!] Looking for available scripts...${NC}"
    
    # List available scripts
    scripts_found=0
    for script in *.sh; do
        if [ -f "$script" ] && [ "$script" != "f-society.sh" ]; then
            echo -e "${GREEN}  → $script${NC}"
            scripts_found=$((scripts_found + 1))
        fi
    done
    
    if [ $scripts_found -eq 0 ]; then
        echo -e "${RED}[✗] No executable scripts found!${NC}"
        echo -e "${YELLOW}[!] Please ensure the toolkit is properly installed.${NC}"
        echo -e "${CYAN}[*] Contact: ATHEX BLACK HAT${NC}"
    else
        echo -e "\n${YELLOW}[?] Run first available script? (y/n): ${NC}"
        read -r choice
        if [[ "$choice" =~ ^[Yy]$ ]]; then
            first_script=$(ls -1 *.sh 2>/dev/null | grep -v "f-society.sh" | head -1)
            if [ -n "$first_script" ]; then
                chmod +x "$first_script"
                exec "./$first_script"
            fi
        fi
    fi
    
    tput cnorm 2>/dev/null
    exit 1
fi