#!/bin/bash

heads=0
tails=0
 
for (( i=0;i<50;i++ ))
do
if [ $((RANDOM%2)) -eq 1 ]
then
    heads=$(($heads+1))
else
    tails=$(($tails+1))
fi

if [ $heads -eq 21 ]
then
     winner="heads"
     margin=$(($heads-$tails))
     break
fi
if [ $tails -eq 21 ]
then
    winner="tails"
    margin=$(($tails-$heads))
    break
fi

done
