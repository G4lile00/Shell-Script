#!/bin/bash

for((i=0;i<1000000000; i ++))
do 
    hash=$(echo 'WhiteF0x'$i'' | sha256sum) 
    echo "'$i':'$hash'"
    echo "-----------"; done
