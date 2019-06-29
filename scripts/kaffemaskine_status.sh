#!/bin/bash
function jsonValue() {
KEY=$1
num=$2
awk -F"[,:}]" '{for(i=1;i<=NF;i++){if($i~/\042'$KEY'\042/){print $(i+2)}}}' | tr -d '"' | sed -n ${num}p
}

#json=`curl -s -X GET http://192.168.2.40/api/uPzZ5R1hZZXoxwDkOsVLaFpAjAvntUU0igA92EN7/lights/15/`
#prop='state'

curl -s -X GET http://192.168.2.40/api/uPzZ5R1hZZXoxwDkOsVLaFpAjAvntUU0igA92EN7/lights/15/ | jsonValue state 1

#echo `curl -s -X GET http://192.168.2.40/api/uPzZ5R1hZZXoxwDkOsVLaFpAjAvntUU0igA92EN7/lights/15/` | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g'  | grep -w 'state' | cut -d":" -f2| sed -e 's/^ *//g' -e 's/ *$//g' 
