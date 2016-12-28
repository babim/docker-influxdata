# influxdata on Alpine Linux

## Usage

To create the image babim/influxdata, execute the following command on folder:

`docker build -t babim/influxdata .`

You can now push new image to the registry:

`docker push babim/influxdata`

## Running your InfluxDB image

Start your image binding the external ports 8083 and 8086 in all interfaces to your container. Ports 8090 and 8099 are only used for clustering and should not be exposed to the internet:

`docker run -d -p 8083:8083 -p 8086:8086 babim/influxdata`

Volume: /data /etc/
