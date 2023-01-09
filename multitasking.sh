#!/usr/bin/bash

#author: Suryansh_Pandey
#this script can perform multiple tasks using switch statement


echo "1) backup of scripts dir and stored in desktop backup_dir"
echo "2) create multiple files in desktop dir with similar names"
echo "3) create multiple dir in desktop dir with similar names"

echo -n "Please opt. one: "
read choice
cd /home/kali/Desktop

case $choice in

  1)
    mkdir backup_dir
    tar cvfz script_dir.tar.gz ./scripts
    mv script_dir.tar.gz ./backup_dir
    echo backup completed
    ;;

  2)
    echo -n "name of the file starts with: "
    read name
    echo -n "number of files: "
    read num
    while [ $num -ne 0 ]
    do
	    touch ${name}${num}.txt
	    ((num--))
    done
    echo files created
    ;;

  3)
    echo -n "name of the dir starts with: "
    read name
    echo -n "number of dir: "
    read num
    while [ $num -ne 0 ]
    do
	    mkdir ${name}${num}
	    ((num--))
    done
    echo dir created
    ;;

  *)
   echo invalid option opted 
    ;;
esac

