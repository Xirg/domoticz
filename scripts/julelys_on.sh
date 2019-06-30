##!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
. "$DIR/params.hue"

curl -X PUT --data '{"on":true}' http://$hueip/api/$hueapi/lights/19/state
