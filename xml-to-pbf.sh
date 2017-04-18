#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly BBOX=${BBOX:-"11.9,46.3,12.2,46.7"}

cd ~/src/osmosis
curl -g "http://overpass-api.de/api/xapi_meta?*[bbox=$BBOX]" -o region.xml
package/bin/osmosis --read-xml region.xml --write-pbf region.pbf
cp region.pbf /data
