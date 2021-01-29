#!/bin/bash
shopt -s extglob
shopt -s globasciiranges

if [ $1 == "check" ]
then
    dataTypeIsExist=0
	if [ $2 = "int" -o $2 = "varchar" -o $2 = "string" ]
    then
        dataTypeIsExist=1
    fi
elif [ $1 == "checkUserInput" ]
then 
	userInputDatatype=0
    #check datatype existance
	case $3 in
        int)
        if [[ $2 == +([0-9]) ]]
        then
            userInputDatatype=1
        fi;;

        varchar)
        if [[ $2 == +([A-Za-z]) ]] 
        then
            userInputDatatype=1
        fi;;

        string)
        if [[ $2 == +([A-Za-z0-9]) ]] 
        then
            userInputDatatype=1
        fi;;

    esac
		
fi
