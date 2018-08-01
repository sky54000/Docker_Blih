#! /bin/sh
set -e

echo "epitech email: " $EPITECH_MAIL
# echo "epitech password: " $EPITECH_PASSWORD
python3 /tmp/blih.py -u $EPITECH_MAIL sshkey list
echo "list"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey upload
echo "Ssh upload"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey list
echo "New list"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey delete uploadSystem
echo "key delete"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey list
echo "New list"
