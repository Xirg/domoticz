#!/bin/sh
python "/home/pi/domoticz/scripts/stuen_stop_music.py"
python "/home/pi/domoticz/scripts/bad_stop_music.py"

curl 'http://Xirg:domoticxk4QwT123@xirg.us.to:4040/json.htm?type=command&param=switchlight&idx=96&switchcmd=Off'
