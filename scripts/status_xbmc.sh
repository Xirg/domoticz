##!/bin/bash
curl -s --data-binary '{ "jsonrpc": "2.0", "method": "Player.GetProperties", "params": { "playerid": 1, "properties": ["speed"] }, "id": 1 }' -H 'content-type: application/json;' http://xbmc:k4QwT123@192.168.2.20:8080/jsonrpc | jq '.["result"]."speed"'
