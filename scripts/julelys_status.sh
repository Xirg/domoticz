#!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
. "$DIR/params.hue"

function jsonValue() {
KEY=$1
num=$2
awk -F"[,:}]" '{for(i=1;i<=NF;i++){if($i~/\042'$KEY'\042/){print $(i+2)}}}' | tr -d '"' | sed -n ${num}p
}

curl -s -X GET http://$hueip/api/$hueapi/lights/19/ | jsonValue state 1

