# Download Open Street Map region as xml and convert it to pbf

[![Docker Automated build](https://img.shields.io/docker/automated/dolomate/get-osm-region.svg)](https://hub.docker.com/r/dolomate/get-osm-region/) [![](https://images.microbadger.com/badges/image/dolomate/get-osm-region.svg)](https://microbadger.com/images/dolomate/get-osm-region "Get your own image badge on microbadger.com")

This Docker image will download a Open Street Map region as xml from [http://overpass-api.de](http://overpass-api.de) and convert it in `pbf` format with [`osmosis`](http://wiki.openstreetmap.org/wiki/Osmosis)

## Usage

### Create the container locally (optional)

`make build`

## Usage

replace `BBOX=11.9,46.3,12.2,46.7` with the desired West, South, East, North bounding box.

`docker run -it -e BBOX=11.9,46.3,12.2,46.7 -v ${PWD}/data:/data dolomate:get-osm-region`
