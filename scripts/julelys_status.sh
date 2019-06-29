#!/bin/bash
function jsonValue() {
KEY=$1
num=$2
awk -F"[,:}]" '{for(i=1;i<=NF;i++){if($i~/\042'$KEY'\042/){print $(i+2)}}}' | tr -d '"' | sed -n ${num}p
}

curl -s -X GET http://192.168.2.40/api/uPzZ5R1hZZXoxwDkOsVLaFpAjAvntUU0igA92EN7/lights/19/ | jsonValue state 1

