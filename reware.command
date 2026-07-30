#!/bin/bash

# ==========================================
# REWARE SCRIPT WITH AUTO-UPDATER
# ==========================================

UPDATE_URL="https://raw.githubusercontent.com/qw1032266-art/reware-dev/main/reware.command"

# Put your updater function here so pressing [P] runs this:
check_for_updates() {
    echo "Checking GitHub for updates..."
    curl -fsSL "$UPDATE_URL" -o "$0.tmp"
    if [ $? -eq 0 ]; then
        mv "$0.tmp" "$0"
        chmod +x "$0"
        echo "Successfully updated! Restarting REWARE..."
        sleep 2
        exec "$0"
    else
        echo "Update failed! Check your connection or GitHub URL."
        rm -f "$0.tmp"
    fi
}

# --- PASTE THE REST OF YOUR REWARE CODE BELOW THIS LINE ---
