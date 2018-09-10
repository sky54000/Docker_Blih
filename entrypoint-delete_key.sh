#! /bin/sh
set -e
echo "epitech email: " $EPITECH_MAIL

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey delete uploadSystem
echo "key delete"

python3 /tmp/blih.py -u $EPITECH_MAIL sshkey list
echo "New list"
