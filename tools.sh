#!/bin/bash

basepath=~/.0x3e
scriptspath="$basepath/scripts"

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="0x3e Tools"
TITLE="Main Menu"
MENU="select option:"

OPTIONS=(0 "View README"
         1 "Virtual Machines"
         2 "Webspaces"
         3 "FastForwardShell"
         4 "Update 0x3e Tools")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        0)
            echo "You chose to vie README"
            bash "$scriptspath/readme.sh"
            ;;
        1)
            echo "You chose Virtual Machines"
            bash "$scriptspath/vms.sh"
            ;;
        2)
            echo "You chose Webspaces"
            bash "$scriptspath/webspaces.sh"
            ;;
        3)
            echo "You chose FastForwardShell"
            bash "$scriptspath/ffwd.sh"
            ;;
        4)
            echo "You chose Update"
            cd $basepath
            git fetch
            ;;
esac