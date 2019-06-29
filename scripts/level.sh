#!/bin/bash

deviceidx=110

name=$(/usr/bin/curl -S -s 'http://192.168.2.51:4040/json.htm?type=devices&rid='$deviceidx | jq -r .result[]."Name")
level=$(/usr/bin/curl -S -s 'http://192.168.2.51:4040/json.htm?type=devices&rid='$deviceidx | jq -r .result[]."Level")
data=$(/usr/bin/curl -S -s 'http://192.168.2.51:4040/json.htm?type=devices&rid='$deviceidx | jq -r .result[]."Data")

if [ "$data" = 'Off' ]; then
	level=0
fi

/usr/bin/curl -S -s 'http://192.168.2.51:4040/json.htm?type=command&param=updateuservariable&vname=Spisebord_Level&vtype=0&vvalue='$level

echo "Name: $name : Data : $data Level: $level"
