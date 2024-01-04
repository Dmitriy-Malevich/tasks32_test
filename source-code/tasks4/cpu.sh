#!/bin/bash
while :
do
	cpuUsage=$(vmstat 1 2 | awk 'NR==4 {print $15}')

	echo " Load CPU: $((100 - $cpuUsage))"  > /home/tasks4/1.txt
                sleep 1

done

