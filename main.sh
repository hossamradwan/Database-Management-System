#!/bin/bash

select choice in "Create Database" "List Databases" "Connect To Database" "Drop Database" "Exit"
do
    case $choice in
        "Create Database") 
            echo "Creating database"
            ./createDb.sh
        ;;
        "List Databases")
            echo "Listing databases"
            ./listDb.sh "list"
        ;;
        "Connect To Database")
            echo "Connecting to a database"
            ./selectDb.sh
        ;; 
        "Drop Database")
            echo "Dropping a database"
            ./dropDb.sh
        ;;
        "Exit")
            echo "DBMS Exit"
	    exit
        ;;
        *) echo "invaled option"
        ;;
    esac
done
