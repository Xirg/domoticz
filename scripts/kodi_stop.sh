##!/bin/bash
#ssh osmc@192.168.2.20 'sleep 2;echo "on 0" | /usr/osmc/bin/cec-client -s -d 1;sleep 2;echo "ad AV" | /usr/osmc/bin/cec-client -s -d 1'
#ssh osmc@192.168.2.20 'echo "ad AV" | /usr/osmc/bin/cec-client -s -d 1'
curl --data-binary '{"jsonrpc":"2.0","method":"Player.Stop","params":{"playerid":1},"id":1}' -H 'content-type: application/json;' http://xbmc:k4QwT123@192.168.2.20:8080/jsonrpc
#curl --data-binary '{"jsonrpc": "2.0", "method": "Player.GetActivePlayers", "id":1}' -H 'content-type: application/json;' http://xbmc:k4QwT123@192.168.2.20:8080/jsonrpc
