#!/usr/bin/bash
while [ true ];do
log_file="system_info.log"

#Date And Time
date_time=$(date "+%d-%m-%y %H:%M:%S")
echo $date_time >> $log_file

#CPU_Usage
cpu_usage=$(top -bn1| grep "Cpu(s)" |awk '{print $2+$4}')
echo $cpu_usage >> $log_file

# Memory 
Memory=`free | grep Mem | awk '{print ($3/$2)*100}'`
echo $Memory >> $log_file

#Swap Memory 
Swap_Memory=`free | grep Swap | awk '{print ($3/$2)*100}'`
echo $Swap_Memory >> $log_file

#Disk Usage
Disk_Usage=`df -h | awk '{print$3}'`
echo $Disk_Memory >> $log_file
done
