#!/bin/bash

while true;do

        time=$(date +"%T %d.%m.%Y")
        memory=`free | awk '/Mem/{printf("%f"), $3/$2*100}'`;
        cpu=`top -bn 2 -d 0.01 | grep '^%Cpu' | tail -n 1 | awk '{printf "%f", $2+$4+$6}'`;

        if [ $(echo "${cpu} > 0" | bc) == 1 ]; then
            printf "%s \t CPU USAGE: %2.2f%% \t MEMORY USAGE: %2.2f%% \n" "$time" "$cpu" "$memory";
            sleep 1s;
        fi;

done | ./dup.sh "$1"
