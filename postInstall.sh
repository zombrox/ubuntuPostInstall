#!/bin/bash

# 1. Adding admin Users

cat admins.txt | sed -e '/^#/ d' > admins.txt.temp

FILE=admins.txt.temp
while read line; do
	echo "Adding admin user : $line"
	./addAdminUser.sh $line &
done < $FILE
rm admins.txt.temp


# 2. Disableing aparmor

# 3. adding repository if needed

# 4. Updating system
apt-get update && apt-get upgrade -y

# 5. Installing usefull utilites and services
./installCommonUtils.sh &&

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

