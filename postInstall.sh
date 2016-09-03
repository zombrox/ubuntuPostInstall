#!/bin/bash

# 1. Adding admin Users
FILE=admins.txt
while read line; do
	echo "Adding admin user : $line"
	./addAdminUser.sh $line &
done < $FILE

# 2. Disableing SELINUX

# 3. adding EPEL repository

# 4. Updating system
apt-get update && apt-get upgrade -y

# 5. Installing usefull utilites and services

# 6. Starting and enableing installed services

# 7. disableing Firewalld

# 8. config for proper ssh daemon work



# 9. Changing password for admin users 
while read line; do
	echo "  Changing password for admin user: $line"
	./changeAdminUserPass.sh $line &
done < $FILE

# 10. Colorise console

./coloriseConsole.sh &&

exit 0
