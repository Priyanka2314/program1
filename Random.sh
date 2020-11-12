#!/bin/bash -x
read -p "Enter a number " n


for (( i=2;i<$n;i+=1 ))
do
  if [ $(($n % i)) -eq 0 ];
  then
	  tag=1
     ran=`printf '%02d\n' $((RANDOM % 10000))`

	  ((count++))
  fi
       done
    if [ $tag -eq 0 ];
  then
          echo "$n is a prime"
  else
	  echo "$count"
          echo "$n not a prime number "
  fi



