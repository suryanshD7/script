#!/usr/bin/bash

#author: Suryansh_Pandey
#Modified: 10-01-2023

#this script can perform multiple tasks using switch statement


echo "1) backup of scripts dir and stored in desktop backup_dir"
echo "2) create multiple files with similar names"
echo "3) create multiple dir with similar names"

echo -n "Please opt. one: "
read choice
cd /home/kali/Desktop

case $choice in

  1)
    echo -ne "By default it takes backup of /home/kali/Desktop/scripts\nwant to continue (type y/n): "
    read opt
    if [ $opt == "y" ]
    then
	    echo continuing with default dir
	    tar cvfz scripts_backup.tar.gz ./scripts
    else
	    echo -n "enter location of dir to be backed up: "
	    read loca
	    echo -n "enter file name: "
	    read file_name
            tar cvfz $file_name $loca
    fi
    echo backup completed
    ;;

  2)
    echo -ne "By default location is /home/kali/Desktop\nwant to continue (type y/n): "
    read reply
    if [ $reply == "y" ]
    then
	    echo continuing with default location
    else
    	echo -n "enter the location for files: "
    	read loc
    	cd $loc
    fi
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
    echo -ne "By default location is /home/kali/Desktop\nwant to continue (type y/n): "
    read response
    if [ $response == "y" ]
    then
	    echo continuing with default location
    else
	    echo -n "enter the location for dir: "
	    read location
	    cd $location
    fi
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

