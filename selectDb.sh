#!/bin/bash

# Select Database
function selectDB
{
	echo -e "Enter Database Name: \c"
	read dbName

	#Check if database exists
	if [ -z $dbName ]
	then
		echo "You Must Enter Valid Name"
		./redisplayMenus.sh 1
		exit
	else 
		source ./listDb.sh "call" $dbName
	fi

	if [ $dbExist -eq 0 ]
	then
		echo "There are no database have this name"
		./redisplayMenus.sh 1
		exit	
	else
		currentDb=$dbName 
		echo "Database $dbName was Successfully Selected"
		export currentDb
		./tableMenu.sh
	fi

}

selectDB
