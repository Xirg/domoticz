##!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
. "$DIR/params.xbmc"

curl --data-binary '{"jsonrpc":"2.0","method":"Player.Stop","params":{"playerid":1},"id":1}' -H 'content-type: application/json;' http://$xbmcusername:$xbmcpassword@$xbmcip:$xbmcport/jsonrpc
