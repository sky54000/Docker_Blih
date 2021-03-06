#! /bin/sh
set -e
echo "Epitech email: " $EPITECH_MAIL

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey upload
echo "Ssh upload"

python3 /tmp/blih.py -u $EPITECH_MAIL repository create $REPO_NAME
echo "Repository created"

python3 /tmp/blih.py -u $EPITECH_MAIL repository setacl $REPO_NAME ramassage-tek r
echo "ramassage-tek read permission added"

python3 /tmp/blih.py -u $EPITECH_MAIL repository getacl $REPO_NAME
echo $REPO_NAME" permission."

git config --global user.name $EPITECH_MAIL
git config --global user.email $EPITECH_MAIL
git config --global user.password $EPITECH_PASSWORD
ssh-keyscan -H git.epitech.eu >> ~/.ssh/known_hosts
echo "Git configuration added"

cd /tmp/
git clone git@git.epitech.eu:/$EPITECH_LOGIN/$REPO_NAME
echo "Project cloned"

cd  $REPO_NAME/
mv /tmp/project/* .;
git add -A *;
git commit -m "$COMMIT_MESSAGE";
git push
echo "Project pushed"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey delete uploadSystem
echo "Key delete"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey list
echo "New list"
