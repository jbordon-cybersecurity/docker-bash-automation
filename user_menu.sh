#!/bin/sh
#
#Author: Jose Bordon
#
#Description: user_menu.sh script to display final book
#chapter and read, remove and add options for the user
#


while true; do

	# Display the menu options
	echo "1. View Final Book Chapter"
	echo "2. Add text to Final Book Chapter"
	echo "3. Remove text from final Book Chapter"
	echo "4. Exit"

	# Prompt the user to choose an option
	read -p "Choose an option: " option

	# Used case statement to handle different options
	case $option in

		1) # Display the content
		cat HOUSE_OF_THE_DOCKERS.txt
		;;

		2) # Prompt the user to add text
		read -p "Enter text to add: " new_text

		# Append the text to the end of the file
		echo "$new_text" >> HOUSE_OF_THE_DOCKERS.txt
		echo "New text added."
		;;
		3) # Prompt the user to remove text
                read -p "Enter text to be removed: " remove

                # Used sed to delete the specified text from the file
                sed -i "/$remove/d"  HOUSE_OF_THE_DOCKERS.txt
                echo "Text \"$remove\" successfully removed." 
                ;;

		4) # Exit
		echo "Exiting..."
		exit 0
		;;

		*) # Error handling for invalid options
		echo "Invalid option, try again."
		;;
	esac
done
