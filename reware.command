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
