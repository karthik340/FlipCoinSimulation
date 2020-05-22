#!/bin/bash

heads=0
tails=0

for (( i=0;i<10;i++ ))
do
if [ $((RANDOM%2)) -eq 1 ]
then
    heads=$(($heads+1))
else
    tails=$(($tails+1))
fi
done
