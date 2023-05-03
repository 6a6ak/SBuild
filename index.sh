#!/bin/bash

# Define the main menu function
function main_menu() {
    clear
    echo "----------------------------------"
    echo " MAIN MENU"
    echo "----------------------------------"
    echo "1. SSH Key4Git"
    echo "2. cat Key"
    echo "3. User Manager"
    echo "4. Git Loader"
    echo "5. Installer"
    echo "0. Exit"
    echo
    echo "Please enter your choice: "
    read selection
    echo
}

# Define the actions for each menu option
function menu_options() {
    case $selection in
        1) 
            echo "SSH Key 4 Git"
            bash ./modules/Key4Git.sh
            ;;
        2) 
            echo "Public Key"
            echo "_________________________________"
            bash ./modules/cat_Key.sh
            ;;
        3)
            echo "User Manager"
              echo "_________________________________"
            bash ./modules/user_man.sh
            ;;
        4)
            echo "Git Loader"
             echo "_________________________________"
            bash ./modules/Gitloader.sh
            ;;
            5)
            echo "All in one Installer"
              echo "_________________________________"
              bash ./modules/run_script.sh
            ;;
        0) 
            echo "Exiting the program"
            exit 0
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
}

# Continuously display the main menu until the user chooses to exit
while true; do
    main_menu
    menu_options
done
