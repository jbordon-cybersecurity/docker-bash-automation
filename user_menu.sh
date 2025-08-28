#!/bin/sh
#
# Author: Jose Bordon
#
# Description: user_menu.sh script
# Provides an interactive menu to view, add, or remove text from the final book
#

while true; do
    echo "1. View Final Book Chapter"
    echo "2. Add text to Final Book Chapter"
    echo "3. Remove text from Final Book Chapter"
    echo "4. Exit"

    read -p "Choose an option: " option

    case $option in
        1)
            cat HOUSE_OF_THE_DOCKERS.txt
            ;;
        2)
            read -p "Enter text to add: " new_text
            echo "$new_text" >> HOUSE_OF_THE_DOCKERS.txt
            echo "New text added."
            ;;
        3)
            read -p "Enter text to be removed: " remove
            sed -i "/$remove/d" HOUSE_OF_THE_DOCKERS.txt
            echo "Text \"$remove\" successfully removed."
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option, try again."
            ;;
    esac
done
