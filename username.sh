#! /bin/bash
# username.sh
# Ariel Gutierrez
echo "Enter a username: "
echo "Use lower case characters, digits and underscore"
echo " It must start with a lower case character"
echo " It must contain at least 3 but not more than 12 characters"

read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z]{1}[a-z0-9\_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a valid username: "
	read USERNAME
done
echo "Thank you"
