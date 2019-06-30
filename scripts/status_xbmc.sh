##!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
. "$DIR/params.xbmc"

curl -s --data-binary '{ "jsonrpc": "2.0", "method": "Player.GetProperties", "params": { "playerid": 1, "properties": ["speed"] }, "id": 1 }' -H 'content-type: application/json;' http://$xbmcusername:$xbmcpassword@$xbmcip:$xbmcport/jsonrpc | jq '.["result"]."speed"'
