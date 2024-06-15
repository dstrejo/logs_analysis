#!/bin/bash

# Log file to be analyzed
#LOG_FILE="/var/log/syslog"

# Function to show menu
show_menu() {
    echo "Choose an option:"
    echo "1. Show all errors"
    echo "2. Show all warnings"
    echo "3. Show all login attempts"
    echo "4. Exit"
}

# Function to show errors
show_errors() {
    grep -i "error" "$LOG_FILE"
}

# Function to show warnings
show_warnings() {
    grep -i "warning" "$LOG_FILE"
}

# Function to show login attempts
show_logins() {
    grep -i "login" "$LOG_FILE"
}
if [ $# -ne 1 ]; then
	echo "Usage: $0 + 'path/to/logs e.g. /var/log/syslog'"
	exit 1
else 
	LOG_FILE=$@

fi	


# Main script logic
while true; do
    show_menu
    read -p "Enter your choice: " choice
    case $choice in
        1) show_errors ;;
        2) show_warnings ;;
        3) show_logins ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
