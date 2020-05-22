#!/bin/bash

if [ $((RANDOM%2)) -eq 1 ]
then
     winner="HEADS"
else
     winner="TAILS"
fi 
