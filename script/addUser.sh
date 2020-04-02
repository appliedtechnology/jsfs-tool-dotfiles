#!/bin/sh

if [[ `id -u` != 0 ]]; then
    echo "Must be root to run script"
    exit
fi

read -p "Enter user name and press [ENTER]: " UserName

if [[ $UserName == `dscl . -list /Users UniqueID | awk '{print $1}' | grep -w $UserName` ]]; then
    echo "User already exists!"
    exit 0
fi

read -p "Enter real name and press [ENTER]: " RealName
read -p "Enter PrimaryGroupID (80 - admin, 20 - user) and press [ENTER]: " PrimaryGroupID
LastID=`dscl . -list /Users UniqueID | awk '{print $2}' | sort -n | tail -1`
NextID=$((LastID + 1))

. /etc/rc.common
dscl . create /Users/$UserName
dscl . create /Users/$UserName RealName $RealName

read -p "Enter password hint and press [ENTER]: " PasswordHint
dscl . create /Users/$UserName hint $PasswordHint
PasswordHint=0

echo " "
read -s -p "Enter Account Password and press [ENTER]: " AccountPassword
echo " "
read -s -p "Enter Account Password again and press [ENTER]: " AccountPasswordRepeat
if [[ $AccountPassword == $AccountPasswordRepeat ]]; then
  dscl . passwd /Users/$UserName $AccountPassword
  AccountPassword=0
else
  echo "Passwords do not match!"
  exit 1
fi
echo " "
dscl . create /Users/$UserName UniqueID $NextID
dscl . create /Users/$UserName PrimaryGroupID $PrimaryGroupID
dscl . create /Users/$UserName UserShell /bin/bash
dscl . create /Users/$UserName NFSHomeDirectory /Users/$UserName
createhomedir -u $UserName -c

echo " "
echo "New user `dscl . -list /Users UniqueID | awk '{print $1}' | grep -w $UserName` has been created with unique ID `dscl . -list /Users UniqueID | grep -w $UserName | awk '{print $2}'`"