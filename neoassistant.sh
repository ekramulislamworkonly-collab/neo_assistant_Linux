#!/bin/bash

# Colors
GREEN="\e[32m"
RED="\e[31m"
BLUE="\e[34m"
YELLOW="\e[33m"
RESET="\e[0m"

echo -e "${BLUE}"
echo "======================================"
echo "        NEO LINUX ASSISTANT        "
echo "======================================"
echo -e "${RESET}"

while true
do
    echo -e "${YELLOW}"
    echo "1. System Update"
    echo "2. Check Internet"
    echo "3. RAM Usage"
    echo "4. Disk Usage"
    echo "5. System Information"
    echo "6. Current Date & Time"
    echo "7. Open VS Code"
    echo "8. Clean Junk Files"
    echo "9. Weather Report"
    echo "10. Exit"
    echo -e "${RESET}"

    read -p "Enter your choice: " choice

    if [ "$choice" == "1" ]
    then
        echo -e "${GREEN}Updating system...${RESET}"
        sudo apt update && sudo apt upgrade -y

    elif [ "$choice" == "2" ]
    then
        echo -e "${BLUE}Checking internet connection...${RESET}"

        ping -c 1 google.com > /dev/null 2>&1

        if [ $? -eq 0 ]
        then
            echo -e "${GREEN}Internet is Connected.${RESET}"
        else
            echo -e "${RED}No Internet Connection.${RESET}"
        fi

    elif [ "$choice" == "3" ]
    then
        echo -e "${YELLOW}RAM Usage:${RESET}"
        free -h

    elif [ "$choice" == "4" ]
    then
        echo -e "${YELLOW}Disk Usage:${RESET}"
        df -h

    elif [ "$choice" == "5" ]
    then
        echo -e "${GREEN}System Information:${RESET}"
        neofetch

    elif [ "$choice" == "6" ]
    then
        echo -e "${BLUE}Current Date & Time:${RESET}"
        date

    elif [ "$choice" == "7" ]
    then
        echo -e "${GREEN}Opening VS Code...${RESET}"
        code

    elif [ "$choice" == "8" ]
    then
        echo -e "${RED}Cleaning temporary files...${RESET}"
        rm -rf ~/.cache/thumbnails/*
        echo -e "${GREEN}Junk files cleaned.${RESET}"

    elif [ "$choice" == "9" ]
    then
        echo -e "${BLUE}Fetching Weather Report...${RESET}"
        curl wttr.in

    elif [ "$choice" == "10" ]
    then
        echo -e "${GREEN}Goodbye Ekramul!! 😊${RESET}"
        break

    else
        echo -e "${RED}Invalid Option.${RESET}"
    fi

    echo ""
done
