##!/bin/bash
#ssh osmc@192.168.2.20 'sleep 2;echo "on 0" | /usr/osmc/bin/cec-client -s -d 1;sleep 2;echo "ad AV" | /usr/osmc/bin/cec-client -s -d 1'
#ssh osmc@192.168.2.20 'echo "ad AV" | /usr/osmc/bin/cec-client -s -d 1'
curl --data-binary '{"jsonrpc":"2.0","method":"Addons.ExecuteAddon","params":{"addonid":"script.json-cec","params":{"command":"activate"}},"id":1}' -H 'content-type: application/json;' http://$xbmcusername:$xbmcpassword@$xbmcip:$xbmcport/jsonrpc
