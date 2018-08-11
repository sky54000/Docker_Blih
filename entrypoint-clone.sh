#! /bin/sh
set -e
echo "Epitech email: " $EPITECH_MAIL

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey upload
echo "Ssh upload"

git config --global user.name $EPITECH_MAIL
git config --global user.email $EPITECH_MAIL
git config --global user.password $EPITECH_PASSWORD
ssh-keyscan -H git.epitech.eu >> ~/.ssh/known_hosts
echo "Git configuration added"

cd /tmp/
git clone git@git.epitech.eu:/$EPITECH_LOGIN/$REPO_NAME
echo "Repository cloned"

cp  -r $REPO_NAME $CLONED_REPOSITORY
python3 /tmp/blih.py -u $EPITECH_MAIL sshkey delete uploadSystem
echo "Key delete"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey list
echo "New list"
