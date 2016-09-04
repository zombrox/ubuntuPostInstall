#!/bin/bash

color=31
userColor=32
rootColor=31
atColor=31
hostColor=31
wdColor=34
dollarColor=32
sharpColor=31
echo -e "# Simple Colours"

while [ $color -le 36 ]

do
echo -e "[\e["$userColor"muser\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$dollarColor"m$\e[0m"
echo -en "[\e["$rootColor"mroot\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$sharpColor"m#\e[0m"

let "counter = $color-30"

echo " color set - $counter"

let "color += 1"
let atColor=color
let hostColor=color

done

echo -e "# Additional Colous"

atColor="38;5;208"
hostColor="38;5;202"
echo -e "[\e["$userColor"muser\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$dollarColor"m$\e[0m"
echo -en "[\e["$rootColor"mroot\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$sharpColor"m#\e[0m"
let "counter += 1"
echo " color set - $counter"

atColor="38;5;128"
hostColor="38;5;91"
echo -e "[\e["$userColor"muser\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$dollarColor"m$\e[0m"
echo -en "[\e["$rootColor"mroot\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$sharpColor"m#\e[0m"
let "counter += 1"
echo " color set - $counter"

atColor="38;5;134"
hostColor="38;5;97"
echo -e "[\e["$userColor"muser\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$dollarColor"m$\e[0m"
echo -en "[\e["$rootColor"mroot\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$sharpColor"m#\e[0m"
let "counter += 1"
echo " color set - $counter"

atColor="38;5;84"
hostColor="38;5;35"
echo -e "[\e["$userColor"muser\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$dollarColor"m$\e[0m"
echo -en "[\e["$rootColor"mroot\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$sharpColor"m#\e[0m"
let "counter += 1"
echo " color set - $counter"

atColor="38;5;152"
hostColor="38;5;109"
echo -e "[\e["$userColor"muser\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$dollarColor"m$\e[0m"
echo -en "[\e["$rootColor"mroot\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$sharpColor"m#\e[0m"
let "counter += 1"
echo " color set - $counter"

atColor="38;5;74"
hostColor="38;5;67"
echo -e "[\e["$userColor"muser\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$dollarColor"m$\e[0m"
echo -en "[\e["$rootColor"mroot\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$sharpColor"m#\e[0m"
let "counter += 1"
echo " color set - $counter"

echo -en '  choose color set: ' && read choose


case $choose in
     1)
          atColor=31
	hostColor=31

          ;;
     2)
	atColor=32
	hostColor=32

          ;;
     3)
	atColor=33
	hostColor=33

          ;;
     4)
	atColor=34
	hostColor=34

          ;;
     5)
	atColor=35
	hostColor=35

          ;;
     6)
	atColor=36
	hostColor=36

          ;;

     7)
	atColor="38;5;208"
	hostColor="38;5;202"

          ;;

     8)
atColor="38;5;128"
hostColor="38;5;91"

          ;;
     9)
atColor="38;5;134"
hostColor="38;5;97"

          ;;
     10)
atColor="38;5;84"
hostColor="38;5;35"

          ;;
     11)
atColor="38;5;152"
hostColor="38;5;109"

          ;;
     12)
atColor="38;5;74"
hostColor="38;5;67"

          ;;
esac

echo -e "  Selected color set:"

echo -e "[\e["$userColor"muser\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$dollarColor"m$\e[0m"
echo -e "[\e["$rootColor"mroot\e[0m\e[1;"$atColor"m@\e[0m\e["$hostColor"mhost\e[0m \e[1;"$wdColor"m/work/dir/\e[0m]\e["$sharpColor"m#\e[0m"


cp bashrc.template.common bashrc.common
cp bashrc.template.root bashrc.root

sed -i "s/USER_COLOR/${userColor}/" bashrc.common


sed -i "s/ROOT_COLOR/${rootColor}/" bashrc.root
sed -i "s/AT_COLOR/${atColor}/" bashrc.common
sed -i "s/AT_COLOR/${atColor}/" bashrc.root
sed -i "s/HOST_COLOR/${hostColor}/" bashrc.common
sed -i "s/HOST_COLOR/${hostColor}/" bashrc.root
sed -i "s/WD_COLOR/${wdColor}/" bashrc.common
sed -i "s/WD_COLOR/${wdColor}/" bashrc.root
sed -i "s/DOLLAR_COLOR/${dollarColor}/" bashrc.common
sed -i "s/SHARP_COLOR/${sharpColor}/" bashrc.root

rm -f /root/.bashrc
rm -f /home/*/.bashrc

cp bashrc.common /etc/bash.bashrc
chown root:root /etc/bash.bashrc
chmod 644 /etc/bash.bashrc

cp bashrc.root /root/.bashrc
chown root:root /root/.bashrc
chmod 644 /root/.bashrc

rm -f bashrc.common
rm -f bashrc.root
