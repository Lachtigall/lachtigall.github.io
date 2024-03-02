#!/bin/bash
# backup-snippets.sh

cd "$(dirname "$0")"
rm -rf "raw"
rm -rf "raw.1"

clear
echo "backup-snippets.sh"
echo "GitLab snippets backup tool."
echo ""


ID=WRITEME

echo "What is the script's ID? (no dollar sign)"
read -p "? " ID
echo ""
mkdir backed-up-snippets
cd backed-up-snippets
wget https://gitlab.com/snippets/$(echo $ID)/raw

clear

GIVENNAME=WRITEME

echo "What is this script called?"
read -p "? " GIVENNAME

mv "raw" "$(echo "$GIVENNAME")"
clear

echo "Script backed up!"
echo ""
echo "Do another? (y/n)"
read -p "? " YESNO


if [ $(echo $YESNO) = 'y' ]; then
    cd "$(dirname "$0")"
    cd ..
    #pwd
	bash backup-snippets.sh
fi

if [ $(echo $YESNO) = 'n' ]; then
    echo ""
    echo "Hope it was helpful."
    echo ""
	exit
fi

# EOF


