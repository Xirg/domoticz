#!/bin/bash
source ./domoticz.params
#python "/home/pi/domoticz/scripts/stuen_stop_music.py"
#python "/home/pi/domoticz/scripts/bad_stop_music.py"

curl "http://$domoticzusername:$domoticzpassword@$domoticzip:$domoticzport/json.htm?type=command&param=switchlight&idx=96&switchcmd=Off"
