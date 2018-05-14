#!/bin/bash
#multiple line comment (: '     labalabala         ')
clear
: '
echo "Bash learning refrence :D"
sleep 3s
clear

#case using
read -p "Enter angle: " angle
case "$angle" in
	"30")
		echo "sin=1/2"
	;;
	"37")
		echo "sin=3/5"
	;;
	"53")
		echo "sin=4/5"
	;;
	*)
		echo "I just know sin for these three angels (30,37,53) :D"
	;;
esac

#write to file (echo "parsa">text.txt)
#append to file (echo "parsa">>text.txt)
#read from file (cat text.txt)

#if using #lt:less than #le:less equal #gt:greater than #ge:greater equal #eq :equal #ne:not equal
read -p "Enter number: " number
if [ $number -ge "85" ]
	then
		echo "Big enough"
elif [ $number -lt "85" ]
	then
		echo "Not big enough"
fi

#math operations
read -p  "Enter second  number: " secondnumber
echo $(($secondnumber*$secondnumber))

#while using
#Break:go out off while or any loop 
#Continue : restart the while or loop from were ever you are
read -p "Enter password: " password
while [ $password != "1234" ]
	do
		read -p "Try again: " password
	done
echo "Password was correct"

#Notification sending
#first install libnotify
notify-send "Fisrt notification! :D"

#Play audio
#& : dont wait to command finish. go to next line and put command in background
rhythmbox "/mnt/F26428266427EC53/Single/Denzel Curry - Ultimate.mp3" &

#Get system date : date (read man for formats(date +%M))
#`(back tik)this is under escape : put to save command value into variable
#can use $() to save command value too
date=`date`
echo $date

#exit status : 0=successful ... : to get last programm exit status check $?
echo $?

#and:&& or:||
read -p "Example number : " numberx
if [ $numberx -eq "85" ] || [ $numberx -eq "69" ];then
	echo "Hello my nice friend"
else
	echo "dont sick your fortune!(:)"
fi

#until : reverse of while
counter="0"
while [ "$counter" != "5" ];do
	counter=$((counter+1))
	echo $counter
done
counter1="0"
until [ "$counter1" == "5" ];do
	((counter1++))
	echo $counter1
done

#for
for name  in amy lana "anna bell";do
	echo $name
done
for i in {1..5..1};do
	echo "$i"
done
for ((j;j<=5;j++));do
	echo "$j"
done

#IFS = Internal Field Seperator : what define as seperator of array elements
IFS=$'\n'
array1="Amy
Lana
Anna
"
for i in $array1;do
	echo "Hi $i"
done

#Argoman : get input when opening script (every thing written infront of script name seperated with space)
#$1 $2 $3 ... $*(all argoman togethers) $*(all argoman seperated)
echo $(($1*$2))

#Function
#to save func value in variable threth it like comman and use backtik (more details on line 59)
#use return to return function status and call it with $?(last command status(exit status))
#to declair local var use local ...
firstfunc(){
    local x=34;
    echo "This is my first function :D"
}
firstfunc

#string editing (it start from left one by one)
#replace '.' with ' ' : ${test/./" "}
#remove '.' from left : ${test#.}
#remove '.' from right : ${test%}
str1="salam.khubi?"
str2=${str1/./" "}
str3=${str2%"?"}
echo "$str3"

#script PID : $$ (pid is id for every process in linux :))
echo $$

#Internal variables (search for all of them)
echo $RANDOM
echo $0

#Trap : run a function when run a command
examplefunction(){
	clementine
}
trap examplefunction exit
exit

#Use switch on opening : getopts

#Search in text : grep (read man for switches)
#regex:regular experessions come handy search for them
grep "run" "test.txt"

#Pipe:use first command output as second command input (firstcommand|secondcommand)
ls -al|grep "Music"

#open text in reading mode with scroll ( less )
less "file.txt"

#Sort : sort files 
'
