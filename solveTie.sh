#!/bin/bash

heads=0
tails=0
function checkMargin()
{
minus=-1
margin=$(($heads-$tails))
if [ $margin -gt 0 ]
then
     echo  $margin
else
     echo $(($minus*$margin))
fi
}



function updateHeadsOrTails()
{
if [ $((RANDOM%2)) -eq 1 ]
then
    heads=$(($heads+1))
else
    tails=$(($tails+1))
fi
}


for (( i=0;i<42;i++ ))
do
updateHeadsOrTails
done


if [ $heads -eq 21 ]
then
     echo tie
     margin=$(checkMargin)
     while [ $margin -lt 2 ]
     do
         updateHeadsOrTails
         margin=$(checkMargin)
     done
fi
if [ $heads -gt $tails ]
then
     winner="HEADS"
     margin=$(checkMargin)
else
     winner="TAILS"
     margin=$(checkMargin)
fi

