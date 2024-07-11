# PART-1
#! /usr/bin/bash
# this is a comment
# echo "Hello World"

# echo Our shell name is $BASH
# echo Our shell version is $BASH_VERSION
# echo Our home directory is $HOME
# echo Our current working directory is $PWD

# name=Mukunda
# age=15
# echo The name is $name
# echo The age of $name is $age

--------------------------------------------------------------------

# PART-2
#! /usr/bin/bash

# echo 'Enter name: '
# read name
# echo "Entered name : $name"
# read name1 name2 name3
# echo "Nmaes : $name1, $name2, $name3"

# read -p 'username : ' user_var
# read -sp 'password : ' pass_var
# echo
# echo "username : $user_var"
# echo "passeord : $pass_var"

# echo "Enter name : "
# read
# echo "Name : $REPLY"

# echo "Enter names : "
# read -a names
# echo "Names are : ${names[0]}, ${names[1]}"

--------------------------------------------------------------------

# PART-3
#! /usr/bin/bash

# echo $0 $1 $2 $3 '> echo $1 $2 $3'
# args=("$@")
# echo ${arg[0]} ${arg[1]} ${arg[2]} 
# echo $@ # to print all arguments

--------------------------------------------------------------------

# PART-4
#! /usr/bin/bash

# count=10
# if [ $count -eq 9 ]
# then
#    echo "Condition is true"
# fi  

--------------------------------------------------------------------

# PART-5
#! /usr/bin/bash

# echo -e "Enter the name of the file : \c" #-e is used to enable the interpretation of thid back slash(\)
# read file_name

# if [ -e $file_name ] 
# then 
#    echo "$file_name found"
# else
#    echo "$file_name not found"
# fi      
# # -e is used to check whether a file exists or not
# # -f is used to check if the files exists then it is regular or not
# # -d is used to check for directories
# # for block special -b
# # for character special -c
# # -s is used to check if a file is empty or not
# # -r to check if the file has reader permission
# # -w to check if it has write permission
# # -x is used to check the execute permission

--------------------------------------------------------------------

# PART-6
#! /usr/bin/bash

# echo -e "Enter the name of the file : \c"
# read file_name

# if [ -f $file_name ]
# then 
#       if [ -w $file_name ]
#       then
#         echo "Type some text data. To quite press ctrl+d."
#         cat >> $file_name
#       else
#         echo "THe file do not have write permissions"
#       fi
# else
#   echo "$file_name not exist"
# fi

--------------------------------------------------------------------

# PART-7
#! /usr/bin/bash
# PART-7

# age=25
# # if [ "$age" -gt 18 ] && [ "$age" -lt 30 ] or,
# if [ "$age" -gt 18 -a "$age" -lt 30 ] 
# then
#   echo "valid age"
# else 
#   echo "age not valid"
# fi    

--------------------------------------------------------------------

# PART-8
#! /usr/bin/bash

# age=50
# # if [ "$age" -gt 18 ] || [ "$age" -lt 30 ] or,
# # if [[ "$age" -eq 18 || "$age" -eq 30 ]] or,
# if [ "$age" -eq 18 -o "$age" -eq 30 ]
# then
#   echo "valid age"
# else 
#   echo "age not valid"
# fi 

--------------------------------------------------------------------

# PART-9
#! /usr/bin/bash

# num1=20
# num2=5

# echo $(( num1 + num2 ))
# echo $(( num1 - num2 ))
# echo $(( num1 * num2 ))
# echo $(( num1 / num2 ))

# echo $(expr $num1 + $num2 )
# echo $(expr $num1 - $num2 )
# echo $(expr $num1 \* $num2 )
# echo $(expr $num1 / $num2 )

--------------------------------------------------------------------

# PART-10
#! /usr/bin/bash

# num1=20.5
# num2=5

# # echo "20.5+5" | bc 
# echo "$num1 + $num2" | bc 
# # echo "20.5-5" | bc 
# echo "$num1 - $num2" | bc 
# echo "20.5*5" | bc 
# # echo "20.5/5" | bc 
# echo "scale=2;20.5/5" | bc 
# echo "20.5%5" | bc

# num=27
# echo "scale=2;sqrt($num)" | bc -l
# echo "scale=20;3^3" | bc -l

--------------------------------------------------------------------

# PART-11
#! /usr/bin/bash

# vehicle=$1

# case $vehicle in 
#     "car" )
#         echo "Rent of $vehicle is 100 dollar" ;;
#     "van" )
#         echo "Rent of $vehicle is 80 dollar" ;;
#     "bicycle" )
#         echo "Rent of $vehicle is 5 dollar" ;;
#     "truck" )
#         echo "Rent of $vehicle is 150 dollar" ;;
#     * )
#         echo "Unknown vehicle" ;;    
# esac    

--------------------------------------------------------------------

# PART-12
#! /usr/bin/bash

# echo -e "Enter some character: \c"
# read value

# case $value in 
#     [a-z] )
#         echo "User entered $value a to z" ;;
#     [A-Z] )
#         echo "User entered $value A to Z" ;;
#     [0-9] )
#         echo "User entered $value 0 to 9" ;;
#     ? )
#         echo "User entered $value special character" ;;
#     * )
#         echo "Unknown input" ;;    
# esac 

--------------------------------------------------------------------

# PART-13
#! /usr/bin/bash

# os=('ubuntu' 'windows' 'kali')
# os[3]='mac'

# unset os[2]
# echo "${os[@]}"
# echo "${os[0]}"
# echo "${!os[@]}"
# echo "${#os[@]}"

# string=uayegfjhdbfkdsjfhuis
# echo "${string[@]}"
# echo "${string[0]}"
# echo "${string[1]}"

--------------------------------------------------------------------

# PART-14
#! /usr/bin/bash
# while loops
# n=1

# # while [ $n -le 10 ]
# while (( $n <= 10 ))
# do 
#     echo "$n"
#     # n=$(( n+1 ))
#     # (( n++ ))
#     (( ++n ))
# done    

--------------------------------------------------------------------

# PART-15
#! /usr/bin/bash

# n=1
# while [ $n -le 10 ]
# do 
#     echo "$n"
#     (( n++ ))
#     # sleep 2
#     gnome-terminal &
# done

--------------------------------------------------------------------
# PART-16
#! /usr/bin/bash

# cat hello.sh | while read p
# do 
#     echo $p
# done

# while read p
# do 
#     echo $p
# done < hello.sh

# while IFS= read -r line
# do 
#     echo $line
# done < /etc/host.conf
# done < hello.sh

--------------------------------------------------------------------

# PART-17
#! /usr/bin/bash
# until loops
# n=1

# until [ $n -ge 10 ]
# until [ $n -gt 10 ]
# until (( $n > 10 ))
# do
#    echo $n
#    (( n++ ))
# done

--------------------------------------------------------------------

# PART-18
#! /usr/bin/bash
# for loops

# for i in 1 2 3 4 5 6 7 
# for i in {1..10}
# for i in {1..10..2} # {START..END..INCREMENT}
# for (( i=0; i<5; i++ ))
# do 
#    echo $i
# done   

--------------------------------------------------------------------

# PART-19
#! /usr/bin/bash

# for command in ls pwd date
# do 
#   echo "-------------------------------$command-------------------------------"
#   $command
# done  

# for item in *
# do 
#   if [ -d $item ]
#   if [ -f $item ]
#   then
#     echo $item
#   fi
# done   

--------------------------------------------------------------------

# PART-20
#! /usr/bin/bash

# select name in Rama Krishna Hayagriva
# do  
#     echo "$name selected"
# done    

# select name in Rama Krishna Hayagriva
# do
#     case $name in
#     Rama)
#       echo Rama selected
#       ;;
#     Krishna)
#       echo Krishna selected
#       ;;
#     Hayagriva)
#       echo Hayagriva selected
#       ;;
#     *)
#       echo "Error please provide the no. between 1..3"
#     esac
# done          

--------------------------------------------------------------------

# PART-21
#! /usr/bin/bash

# for (( i=1; i<=10; i++ ))
# do 
#   if [ $i -gt 5 ]
#   then
#     break
#   fi
#     echo "$i"
# done

# for (( i=1; i<=10; i++ ))
# do 
#   if [ $i -eq 3 -o $i -eq 6 ]
#   then
#     continue
#   fi
#     echo "$i"
# done

--------------------------------------------------------------------

# PART-22
#! /usr/bin/bash

# function Hello(){
#     echo "Hello"
# }
# quit (){
#     exit
# }
# Hello
# echo "foo"
# quit

# function print(){
#     echo $1 $2 $3
# }
# quit () {
#     exit
# }
# print Hello World Again
# echo "foo"
# quit

--------------------------------------------------------------------

# PART-23
#! /usr/bin/bash

# function print(){
#     local name=$1
#     echo "the name is $name"
# }
# name="Krishna"
# echo "The name is $name : Before"
# print Hayagriva
# echo "The name is $name : After"

--------------------------------------------------------------------

# PART-24
#! /usr/bin/bash

# usage(){
#     echo "You need to provide an argument : "
#     echo "usage : $0 file_name"
# }

# is_file_exist(){
#     local file="$1"
#     [[ -f "$file" ]] && return 0 || return 1
# }

# [[ $# -eq 0 ]] && usage

# if ( is_file_exist "$1")
# then
#    echo "File found"
# else
#    echo "File not found"
# fi      

--------------------------------------------------------------------

# PART-25
#! /usr/bin/bash

# var=31

# readonly var
# var=50

# echo "var => $var"

# hello(){
#     echo "Hello World"
# }

# readonly -f hello

# hello(){
#     echo "Hello World Again"
# }

# readonly

# readonly -p

# hello(){
#     echo "Hello"
# }

# readonly -f hello
# readonly -f

--------------------------------------------------------------------

# PART-26
#! /usr/bin/bash

# trap "echo EXit command is detected" SIGINT
# trap "echo EXit command is detected" SIGKILL
# file=/home/linux/Desktop/test
# trap "rm -f $file; exit" 0 2 15
# trap "rm -f $file && echo file deleted; exit" 0 2 15
# echo "pid is $$"
# while (( COUNT < 10 ))
# do
#    sleep 2
#    (( COUNT ++ ))
#    echo $COUNT
# done
# exit 0   

# trap "echo EXit command is detected" 0
# echo "Hello World"
# exit 0

--------------------------------------------------------------------

# PART-27
#! /usr/bin/bash

# set -x

# file=/home/linux/Desktop/test

# set +x
# trap "rm -f $file && echo file deleted; exit" 0 2 15
# echo "pid is $$"
# while (( COUNT < 10 ))
# do
#    sleep 2
#    (( COUNT ++ ))
#    echo $COUNT
# done
# exit 0 
