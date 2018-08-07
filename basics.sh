#!/usr/bin/env bash

#lists the files in human readable form
ls -lah

#prints string
echo "Test"

#prints home directory
echo $HOME

#clears the shell
clear

#prints working directory
echo " Current working directory: $(pwd)"

#variables

test_variable=$HOME
echo ${test_variable}

#prints current user
echo ${USER}



#prints variable length of command line arguments
echo "I saw ${@}."

#prints first command line argument
echo "I saw ${1}"

#interactive shell

echo "Enter 'y' or 'n'"
read userInput
echo "Input is ${userInput}"
if [ $userInput == 'y' ]; then

    echo "Enter type of file"
    read ext
    touch "myfile.${ext}"
else
    echo "File was not created"
fi

#Conditionals

if [ -f $1 ];then
    echo "Exists"
else
    echo "Doesn't exists"
fi

#loop

for i in $(seq 10)
do
    echo ${i}
done

for i in $(ls -1)
do
    echo ${i}
done


#math operations are only integers

echo $((5+6))
