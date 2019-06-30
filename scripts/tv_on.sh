##!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
. "$DIR/params.xbmc"

curl --data-binary '{"jsonrpc":"2.0","method":"Addons.ExecuteAddon","params":{"addonid":"script.json-cec","params":{"command":"activate"}},"id":1}' -H 'content-type: application/json;' http://$xbmcusername:$xbmcpassword@$xbmcip:$xbmcport/jsonrpc
