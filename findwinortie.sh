#!/bin/bash

heads=0
tails=0
 
for (( i=0;i<42;i++ ))
do
if [ $((RANDOM%2)) -eq 1 ]
then
    heads=$(($heads+1))
else
    tails=$(($tails+1))
fi
done


if [ $heads -eq 21 ]
then
     winner="TIE GAME"
elif [ $heads -gt $tails ]
then
     winner="HEADS"
     margin=$(($heads-$tails))
else
     winner="TAILS"
     margin=$(($tails-$heads))
fi
