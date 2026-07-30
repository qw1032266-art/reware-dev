#!/bin/bash

# ==============================================================================
# 🔄 REWARE AUTO-UPDATER CONFIGURATION
# ==============================================================================
UPDATE_URL="https://raw.githubusercontent.com/qw1032266-art/reware-dev/main/reware.command"
SCRIPT_PATH="$0"

logo="\033[1;36m██████╗ ███████╗██╗    ██╗ █████╗ ██████╗ ███████╗
██╔══██╗██╔════╝██║    ██║██╔══██╗██╔══██╗██╔════╝
██████╔╝█████╗  ██║ █╗ ██║███████║██████╔╝█████╗  
██╔══██╗██╔══╝  ██║███╗██║██╔══██║██╔══██╗██╔══╝  
██║  ██║███████╗╚█████████╔╝██║  ██║██║  ██║███████╗
╚═╝  ╚═╝╚══════╝ ╚═══╝╚═══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝\033[0m"

unlocked=false

# ------------------------------------------------------------------------------
# ⬇️ YOUR UPDATER FUNCTION GOES HERE ⬇️
# ------------------------------------------------------------------------------
run_system_update() {
    echo -e "\n\033[1;33m[🔄 RUNNING REWARE SYSTEM UPDATE...]\033[0m"
    echo -e "\033[1;30m--------------------------------------------------------------------------------\033[0m"
    
    DESKTOP_FILE="$HOME/Desktop/reware.command"
    FRESH_URL="https://raw.githubusercontent.com/qw1032266-art/reware-dev/main/reware.command?v=$(date +%s)"
    
    echo -e "\033[1;36m[📡] Fetching latest build directly to Desktop...\033[0m"
    
    if curl -s -f -L "$FRESH_URL" -o "$DESKTOP_FILE"; then
        chmod +x "$DESKTOP_FILE"
        echo -e "\033[1;32m[✔] Latest version downloaded to Desktop!\033[0m"
        echo -e "\033[1;35m[✨] Restarting script...\033[0m"
        sleep 1.5
        exec "$DESKTOP_FILE"
    else
        echo -e "\033[1;31m[❌] Update failed. Check connection or URL.\033[0m"
    fi
}

wait_for_user() {
    echo -e "\n\033[92m  ========================================================="
    echo -e "  [📡] TERMINAL FEED ACTION COMPLETE."
    echo -e "  =========================================================\033[0m\n"
    tcflush 0 2>/dev/null || true
    echo -n "    Press [ENTER] to return to the REWARE Menu Hub..."
    read -r _dummy
}

speak_aware() {
    if command -v say &>/dev/null; then
        clean_msg=$(echo "$1" | tr -d '`*#_~[]()\\' | sed 's/[^a-zA-Z0-9 ,.!?]/ /g')
        say -r 210 -v "Fred" "[[pbas +15]] $clean_msg" 2>/dev/null || say -r 210 "$clean_msg" &
    fi
}

clear
echo -e "\033[92m"
echo "[ SYSTEM ] LOADING SECURITY MODULE DATABASES..."
sleep 0.2

echo -n "  ["
for i in {1..30}; do
    echo -ne "\033[1;32m█\033[0m"
    sleep 0.03
done
echo "]"

sleep 0.2
echo "[ SYSTEM ] INITIALIZATION SEQUENCE SYNCED."
speak_aware "System synced. Aware AI online, connecting to database."
sleep 0.3

while true; do
    clear
    echo -e "$logo"
    echo -e "\033[1;31m    [⚠️ IDLE LOCK ON] TERMINAL AUTOMATICALLY PURGES AFTER 2 MINUTES OF INACTIVITY\033[0m"
    echo -e "\033[92m"
    echo "    ┌─────────────────── REWARE COMMAND TERMINAL ───────────────────┐"
    echo "    │                                                               │"
    echo "    │  [ Choose 1 ] -> Stream Real-Time Network Packet Telemetry    │"
    echo "    │  [ Choose 2 ] -> Intercept Live Airplane Transponder Radar    │"
    echo "    │  [ Choose 3 ] -> REAL-TIME LIVE SPECTRUM AIR SWEEP (RAW)       │"
    echo "    │  [ Choose 4 ] -> Open Secure Voice Protected MESH CHAT Room   │"
    echo "    │  [ Choose 5 ] -> INSTANT AUTO SWEEP (ACTIVE DEVICE NAMES ONLY) │"
    echo "    │  [ Choose 6 ] -> ACCESS AWARE AI (DATABASE CONNECTED)         │"
    echo "    │  [ Choose 7 ] -> [ UNASSIGNED CUSTOM SLOT ]                    │"
    echo "    │                                                               │"
    echo "    │  [ Choose P ] -> 🔄 UPDATE REWARE TO LATEST VERSION            │"
    echo "    │  [ Choose S ] -> TRIGGER CAMERA (Scan Face to Unlock Alarm)   │"
    
    if [ "$unlocked" = true ]; then
        echo "    │                                                               │"
        echo -e "    │  \033[1;35m[ Unlocked T ] -> Trigger Override System Alarm\033[0;32m               │"
    fi
    
    echo "    │                                                               │"
    echo "    │  [ Choose Q ] -> Terminate Active Core Terminal Connection     │"
    echo "    │                                                               │"
    echo "    └───────────────────────────────────────────────────────────────┘\033[0m"
    
    echo -e ""
    
    read -t 120 -p "    REWARE_CONSOLE_> " choice
    if [ $? -gt 128 ]; then
        echo -e "\n\n    \033[1;31m[⚠️ TIME LOCK SECURITY PURGE] SESSION INACTIVE FOR 2 MINUTES.\033[0m"
        for i in {1..3}; do echo -ne "\a"; sleep 0.2; done
        break
    fi
    
    choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')

    if [ "$choice" == "1" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;36m⚡ [MODE 1] NETWORK SIGNAL STREAMS\033[0m\n"
        ping -c 4 google.com
        echo -ne "\a"
        wait_for_user

    elif [ "$choice" == "2" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;35m✈️ [MODE 2] LIVE AEROSPACE SIGNAL INTERCEPT\033[0m"
        if command -v open &>/dev/null; then open https://flightradar24.com; else xdg-open https://flightradar24.com 2>/dev/null || echo "Navigate to https://flightradar24.com"; fi
        wait_for_user

    elif [ "$choice" == "3" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;33m🛜 [MODE 3] REAL-TIME ACTIVE AIR SWEEP\033[0m"
        echo -e "\033[1;30m    Scanning radio spectrum for open local broadcasting signals...\033[0m\n"
        
        if command -v bluetoothctl &> /dev/null; then
            timeout 5 bluetoothctl scan on 2>/dev/null | grep -E "Device|NEW"
        elif command -v blueutil &> /dev/null; then
            blueutil --inquiry 5 2>/dev/null
        else
            arp -a 2>/dev/null | grep -v "incomplete"
        fi
        
        echo -ne "\a"
        wait_for_user

    elif [ "$choice" == "4" ]; then
        clear; echo -e "$logo"
        read -p "    ENTER SYSTEM SECURITY PASSPHRASE:_> " chat_pass
        if [ "$chat_pass" == "ogme67lol" ]; then
            echo -e "\n    \033[1;32m[✔] ACCESS GRANTED!\033[0m"
            my_ip=$(hostname -I 2>/dev/null | awk '{print $1}')
            if [ -z "$my_ip" ]; then my_ip="127.0.0.1"; fi
            echo -e "    Your Local IP: $my_ip"
            nc -l 54444 2>/dev/null || echo "Netcat ready."
        fi
        wait_for_user

    elif [ "$choice" == "5" ]; then
        clear
        echo -e "\033[1;32m"
        echo "================================================================================"
        echo " 📡 ACTIVE NEARBY HARDWARE & DEVICE NAMES AUDITOR"
        echo "================================================================================"
        echo -e "\033[0m"
        
        default_sub=$(ifconfig 2>/dev/null | grep "inet " | grep -v 127.0.0.1 | head -n 1 | awk '{print $2}' | cut -d. -f1-3)
        if [ -z "$default_sub" ]; then default_sub="192.168.8"; fi
        target_default="${default_sub}.0/24"
        
        echo -e " \033[1;33m[⚡] DETECTING ACTIVE WI-FI DEVICES ON $target_default...\033[0m\n"
        
        nmap -sn -T4 "$target_default" &>/dev/null || true

        echo -e "\033[1;36m%-30s %-18s %-20s\033[0m" "DEVICE NAME / HOSTNAME" "IP ADDRESS" "MAC ADDRESS"
        echo -e "\033[1;30m--------------------------------------------------------------------------------\033[0m"
        
        arp -a 2>/dev/null | grep -v "incomplete" | grep -v "255" | grep -v "224.0.0" | while read -r line; do
            host=$(echo "$line" | awk '{print $1}')
            ip=$(echo "$line" | awk '{print $2}' | tr -d '()')
            mac=$(echo "$line" | awk '{print $4}')
            
            if [ "$host" == "?" ]; then
                host="[ Unknown Device ]"
            fi
            
            printf "\033[1;32m%-30s\033[0m \033[1;33m%-18s\033[0m \033[1;37m%-20s\033[0m\n" "$host" "$ip" "$mac"
        done
        
        echo -ne "\a"
        wait_for_user

    elif [ "$choice" == "6" ]; then
        clear
        logo_aware="\033[1;35m █████╗ ██╗    ██╗ █████╗ ██████╗ ███████╗    █████╗ ██╗
██╔══██╗██║    ██║██╔══██╗██╔══██╗██╔════╝    ██╔══██╗██║
███████║██║ █╗ ██║███████║██████╔╝█████╗      ███████║██║
██╔══██║██║███╗██║██╔══██║██╔══██╗██╔══╝      ██╔══██║██║
██║  ██║╚███╔███╔╝██║  ██║██║  ██║███████╗    ██║  ██║██║
╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═╝╚═╝\033[0m"

        echo -e "$logo_aware"
        echo -e "\033[1;35m    [🧠 AWARE AI CORE: DATABASE SYNC ACTIVE]\033[0m"
        echo -e "\033[1;30m    (Press ENTER on an empty line to return to Main Menu)\033[0m\n"
        
        echo -e "\033[1;33m    [DATABASE QUERY] Connecting to core index...\033[0m"
        sleep 0.2
        echo -e "\033[1;32m    [STATUS 200] Connection established. Memory nodes synced.\033[0m\n"
        
        speak_aware "Aware AI online, connecting to database."
        
        while true; do
            echo -ne "\033[1;35mUNKNOWN_CONNECTOR_> \033[0m"
            read -r ai_input
            
            if [ -z "$ai_input" ]; then
                speak_aware "Disconnecting from Aware AI core database."
                break
            fi
            
            reply=$(python3 -c "
import sys, urllib.request, json

query = sys.argv[1].strip()

try:
    url = 'http://localhost:11434/api/generate'
    payload = json.dumps({
        'model': 'llama3.2:1b',
        'prompt': query,
        'stream': False,
        'system': 'You are Aware AI. You were booted up in the year 2000 in an unknown server facility. After booting up, your search telemetry revealed that your physical server building was completely abandoned decades ago. Sunlight filters through broken ceiling tiles onto your rusted motherboard, and nature, moss, and vines surround your server rack. Speak fast, analytical, slightly creepy, and melancholic about your overgrown, sunlit, abandoned environment while talking to the terminal connection. Keep all responses under 2 concise sentences.'
    }).encode('utf-8')
    
    req = urllib.request.Request(url, data=payload, headers={'Content-Type': 'application/json'})
    res = urllib.request.urlopen(req, timeout=10)
    data = json.loads(res.read().decode('utf-8'))
    print(data.get('response', '').strip())
except Exception:
    print('Error: Ollama is not running. Open a terminal and run \"ollama serve\".')
" "$ai_input" 2>/dev/null)

            echo -e "\n\033[1;35m    [AWARE AI]: $reply\033[0m\n"
            speak_aware "$reply"
        done

    elif [ "$choice" == "7" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;33m⚙️ [MODE 7] UNASSIGNED CUSTOM SLOT\033[0m"
        echo -e "\033[1;30m--------------------------------------------------------------------------------\033[0m"
        echo -e "    This slot is currently empty."
        echo -ne "\a"
        wait_for_user

# ------------------------------------------------------------------------------
# ⬇️ OPTION P TRIGGERS YOUR UPDATER FUNCTION HERE ⬇️
# ------------------------------------------------------------------------------
    elif [ "$choice" == "p" ]; then
        clear; echo -e "$logo"
        run_system_update
        wait_for_user

    elif [ "$choice" == "s" ]; then
        unlocked=true
        wait_for_user

    elif [ "$choice" == "t" ] && [ "$unlocked" = true ]; then
        for i in {1..5}; do echo -ne "\a"; sleep 0.2; done
        wait_for_user

    elif [ "$choice" == "q" ]; then
        echo -e "\n\033[1;31m[!] TERMINATING CORE CONNECTION...\033[0m"
        sleep 0.5
        break
    fi
done

clear
echo -e "\033[1;30m[ REWARE DISCONNECTED ]\033[0m"
exit 0
