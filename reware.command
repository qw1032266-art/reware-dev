#!/bin/bash

# ==============================================================================
# 🔄 REWARE CONFIGURATION
# ==============================================================================
UPDATE_URL="https://raw.githubusercontent.com/qw1032266-art/reware-dev/main/reware.command?nocache=\$(date +%s)"
SCRIPT_PATH="$HOME/Desktop/reware.command"

# Define the master logo text art variable
logo="\033[1;36m██████╗ ███████╗██╗    ██╗ █████╗ ██████╗ ███████╗
██╔══██╗██╔════╝██║    ██║██╔══██╗██╔══██╗██╔════╝
██████╔╝█████╗  ██║ █╗ ██║███████║██████╔╝█████╗  
██╔══██╗██╔══╝  ██║███╗██║██╔══██║██╔══██╗██╔══╝  
██║  ██║███████╗╚█████████╔╝██║  ██║██║  ██║███████╗
╚═╝  ╚═╝╚══════╝ ╚═══╝╚═══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝\033[0m"

unlocked=false

run_system_update() {
    echo -e "\n\033[1;33m[🔄 RUNNING REWARE SYSTEM UPDATE...]\033[0m"
    echo -e "\033[1;30m--------------------------------------------------------------------------------\033[0m"
    
    tmp_file="/tmp/reware_latest.command"
    echo -e "\033[1;36m[📡] Fetching latest build from remote server...\033[0m"
    
    # Evaluate UPDATE_URL to refresh timestamp dynamically
    eval_url=$(eval echo "$UPDATE_URL")

    if curl -s -f --connect-timeout 5 "$eval_url" -o "$tmp_file"; then
        echo -e "\033[1;32m[✔] Latest version downloaded!\033[0m"
        cp "$tmp_file" "$SCRIPT_PATH"
        chmod +x "$SCRIPT_PATH"
        rm -f "$tmp_file"
        echo -e "\033[1;35m[✨] REWARE successfully updated! Launching new version...\033[0m"
        sleep 1.5
        open "$SCRIPT_PATH"
        kill -9 $$
    else
        echo -e "\033[1;31m[❌] Update failed. Check your internet connection or URL.\033[0m"
        rm -f "$tmp_file"
    fi
}

wait_for_user() {
    echo -e "\n\033[92m  ========================================================="
    echo -e "  [📡] TERMINAL FEED ACTION COMPLETE."
    echo -e "  =========================================================\033[0m\n"
    read -p "   Press [ENTER] to return to the REWARE Menu Hub..."
}

# 1. Original cascading loading animation intro
clear
echo -e "\033[92m"
echo "[ SYSTEM ] LOADING SECURITY MODULE DATABASES..."
sleep 0.3
echo "[ SYSTEM ] ENABLING TIMEOUT IDLE MONITORS..."
sleep 0.3
echo "[ SYSTEM ] INITIALIZATION SEQUENCE SYNCED."
sleep 0.4

bar_length=30
for ((i=0; i<=bar_length; i++)); do
    percent=$((i * 100 / bar_length))
    progress=""
    for ((j=0; j<i; j++)); do progress="${progress}█"; done
    for ((j=i; j<bar_length; j++)); do progress="${progress}░"; done
    echo -ne "\r      Loading Components: [${progress}] ${percent}%"
    sleep 0.02
done
echo -e "\n\n      [✔] REWARE SECURE CORE ONLINE!"
echo -ne "\a"
sleep 0.6

# 2. Original Main Menu Hub Loop
while true; do
    clear
    echo -e "$logo"
    echo -e "\033[1;31m   [⚠️ IDLE LOCK ON] TERMINAL AUTOMATICALLY PURGES AFTER 2 MINUTES OF INACTIVITY\033[0m"
    echo -e "\033[92m"
    echo "   ┌───────────────── REWARE COMMAND TERMINAL v2.0 ─────────────────┐"
    echo "   │                                                               │"
    echo "   │  [ Choose 1 ] -> Stream Real-Time Network Packet Telemetry    │"
    echo "   │  [ Choose 2 ] -> Intercept Live Airplane Transponder Radar    │"
    echo "   │  [ Choose 3 ] -> Run Live Mac Bluetooth Hardware Spectrum Scan │"
    echo "   │  [ Choose 4 ] -> Open Secure Voice Protected MESH CHAT Room   │"
    echo "   │  [ Choose 5 ] -> Scan Airwaves & Intercept Radio Broadcasts   │"
    echo "   │                                                               │"
    echo "   │  [ Choose P ] -> 🔄 UPDATE REWARE TO LATEST VERSION            │"
    echo "   │  [ Choose S ] -> TRIGGER CAMERA (Scan Face to Unlock Alarm)   │"
    
    if [ "$unlocked" = true ]; then
        echo "   │                                                               │"
        echo -e "   │  \033[1;35m[ Unlocked T ] -> Trigger Override System Alarm\033[0;32m              │"
    fi
    
    echo "   │                                                               │"
    echo "   │  [ Choose Q ] -> Terminate Active Core Terminal Connection     │"
    echo "   │                                                               │"
    echo "   └───────────────────────────────────────────────────────────────┘\033[0m"
    
    echo -e ""
    
    read -t 120 -p "   REWARE_CONSOLE_> " choice
    if [ $? -gt 128 ]; then
        echo -e "\n\n   \033[1;31m[⚠️ TIME LOCK SECURITY PURGE] SESSION INACTIVE FOR 2 MINUTES.\033[0m"
        for i in {1..3}; do echo -ne "\a"; sleep 0.2; done
        break
    fi
    
    choice=$(echo "$choice" | tr '[:lower:]' '[:upper:]')

    if [ "$choice" == "1" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;36m⚡ [MODE 1] NETWORK SIGNAL STREAMS\033[0m\n"
        ping -c 4 google.com
        echo -ne "\a"
        wait_for_user

    elif [ "$choice" == "2" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;35m✈️ [MODE 2] LIVE AEROSPACE SIGNAL INTERCEPT\033[0m"
        open https://flightradar24.com
        wait_for_user

    elif [ "$choice" == "3" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;33m🛜 [MODE 3] BLUETOOTH HARDWARE ANTENNA SCAN\033[0m"
        sleep 2
        devices=$(system_profiler SPBluetoothDataType 2>/dev/null | grep -A 2 -E "Devices:|Connected:")
        if [ -z "$devices" ]; then
            echo "   • Bluetooth Chip is ON (No devices nearby)."
        else
            echo "$devices"
        fi
        echo -ne "\a"
        wait_for_user

    elif [ "$choice" == "4" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;33m🔒 [SYSTEM LOCK] REWARE PRIVACY FIREWALL IS ACTIVE\033[0m"
        read -p "   ENTER SYSTEM SECURITY PASSPHRASE:_> " chat_pass
        
        if [ "$chat_pass" != "ogme67lol" ]; then
            echo -e "\n   \033[1;31m[❌] SECURITY ACCESS DENIED: CRITICAL PASSCODE ERROR.\033[0m"
            echo -ne "\a"
            sleep 2
        else
            echo -e "\n   \033[1;32m[✔] ACCESS GRANTED! SECURE MESH CORES INITIALIZED.\033[0m"
            echo -ne "\a"
            sleep 1
            
            clear
            logo_c="\033[1;36m██████╗ ███████╗\n██╔══██╗██╔════╝\n██████╔╝█████╗  \n██╔══██╗██╔══╝  \n██║  ██║███████╗\n╚═╝  ╚═╝╚══════╝\n         [ SECURE VOICE INTERLINK ]\033[0m"
            echo -e "$logo_c"
            echo ""
            echo "   [ Press 1 ] -> Host Mode (You host the network room)"
            echo "   [ Press 2 ] -> Connect Mode (You connect to a hosted room)"
            echo ""
            read -p "   REWARE_CHAT_CONSOLE_> " net_choice
            
            if [ "$net_choice" == "1" ]; then
                clear; echo -e "$logo_c"
                my_ip=$(ipconfig getifaddr en0 2>/dev/null)
                if [ -z "$my_ip" ]; then my_ip="127.0.0.1"; fi
                echo -e "   [📡] DOORWAY ARMED. Waiting for link signals..."
                echo -e "   Your Local IP is: \033[1;32m$my_ip\033[0m"
                echo -e "   (If testing on this same Mac, leave this screen open now!)"
                echo ""
                nc -l 54444 < /dev/tpl 2>/dev/null || nc -l 54444
                echo -e "\n   [✔] Connection dropped or complete."
                wait_for_user
            else
                clear; echo -e "$logo_c"
                read -p "   [⚙] Enter target computer IP address (Type 127.0.0.1 for self-test):_> " target_ip
                echo ""
                echo -e "   [📡] Attempting handshake connection sequence to $target_ip..."
                ping -c 1 "$target_ip" >/dev/null 2>&1
                nc "$target_ip" 54444
                echo -e "\n   [✔] Link disconnected."
                wait_for_user
            fi
        fi

    elif [ "$choice" == "5" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;36m📡 [MODE 5] REWARE RADIO FREQUENCY SIGNAL FINDER\033[0m"
        for i in {1..5}; do
            freq=$(echo "scale=2; 88.0 + ($RANDOM % 20)" | bc)
            echo -e "   📻 [ SCANNING ] TUNING FREQUENCY: ${freq}MHz... [ STATIC ]"
            echo -ne "\a"; sleep 0.2
        done
        msg_text="This is a security transmission broadcast from the reware main frame. Protocol code numbers nine, seven, zero, four, alpha. Standing by."
        echo -e "\n   \033[1;32m[✔] LOCK ACQUIRED! Decoded Audio: \"${msg_text}\"\033[0m"
        say -v Fred "$msg_text" &
        wait_for_user

    elif [ "$choice" == "P" ]; then
        clear; echo -e "$logo"
        run_system_update
        wait_for_user

    elif [ "$choice" == "S" ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;31m📸 [SECURITY ROUTINE] SYSTEM NODE ENHANCEMENT SCANNER\033[0m"
        sleep 1
        echo -e "\n\033[5;32m   [✔] SYSTEM MATRIX UPDATE VERIFIED. HUB OPTION T UNLOCKED.\033[0m"
        echo -ne "\a"
        unlocked=true
        wait_for_user

    elif [ "$choice" == "T" ] && [ "$unlocked" = true ]; then
        clear; echo -e "$logo"
        echo -e "\n\033[1;31m🚨 [OVERRIDE] ENGAGING CORE SYSTEM ALARM\033[0m"
        for i in {1..5}; do echo -ne "\a"; sleep 0.3; done
        wait_for_user

    elif [ "$choice" == "Q" ]; then
        kill -9 $$
    fi
done

kill -9 $$
