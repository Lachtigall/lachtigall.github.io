#!/bin/bash
# backup-repos.sh

cd "$(dirname "$0")"
rm -rf "raw"
rm -rf "raw.1"

clear
echo "backup-repos.sh"
echo "GitLab repos backup tool."
echo ""


ID=WRITEME

echo "What is the repo's name? (just the bit of the url after your username)"
read -p "? " ID
echo ""
mkdir backed-up-repos
cd backed-up-repos
git clone https://gitlab.com/Novimatrem/$(echo $ID)

clear

GIVENNAME=WRITEME

clear

echo "Repo backed up!"
echo ""
echo "Do another? (y/n)"
read -p "? " YESNO


if [ $(echo $YESNO) = 'y' ]; then
    cd "$(dirname "$0")"
    cd ..
    #pwd
	bash backup-repos.sh
fi

if [ $(echo $YESNO) = 'n' ]; then
    echo ""
    echo "Hope it was helpful."
    echo ""
	exit
fi

# EOF


