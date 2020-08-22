#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="0x3e Tools"
TITLE="What U want?"
MENU="select option:"

OPTIONS=(1 "Virtual Machines"
         2 "Webspaces"
         3 "FastForwardShell")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo "You chose Virtual Machines"
            bash "scripts/vms.sh"
            ;;
        2)
            echo "You chose Webspaces"
            bash "scripts/webspaces.sh"
            ;;
        3)
            echo "You chose FastForwardShell"
            bash "scripts/ffwd.sh"
            ;;
esac