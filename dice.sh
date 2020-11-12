#!/bin/bash -x

die1=0
die2=0
Spots=6
throw=1
 let "die1= $RANDOM  %  $Spots +1"
 echo "$die1"
 let "die2= $RANDOM  %  $Spots +1 "
 echo "$die2"

 for (( i=0;i<=6;i+=1 ))
 do  
  if [ $die1 -eq 6 && $die2 -eq 6 ]
     then
     totalroll=$(($die1+$die2))
      ((throw++))
      break
  fi
done
 echo $throw

 echo “You have rolled” $totalroll 



