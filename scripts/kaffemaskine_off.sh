##!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
. "$DIR/params.hue"

curl -X PUT --data '{"on":false}' http://$hueip/api/$hueapi/lights/15/state
