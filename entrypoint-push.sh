#! /bin/sh
set -e
echo "epitech email: " $EPITECH_MAIL

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey upload
echo "Ssh upload"

git config --global user.name $EPITECH_MAIL
git config --global user.email $EPITECH_MAIL
git config --global user.password $EPITECH_PASSWORD
ssh-keyscan -H git.epitech.eu >> ~/.ssh/known_hosts
echo "Git configuration added"

cd /tmp/project/
git push origin master
echo "Repository push"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey delete uploadSystem
echo "key delete"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey list
echo "New list"
