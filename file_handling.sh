# !/bin/bash

# Download file from url and unzip it
# curl http://rather.long.url | tar -xz -C my_directory --strip-components=1

# convert it to universal script
# bash my_script.sh url my_directory

URL = $1
DIRECTORY = $2

if [$# eq 0];
then
echo "usage: bash yaml-fetch.sh <'snapshot_url'> <directory>
else
# Create directory if not exist
echo 'Create directory'
mkdir $DIRECTORY
# Download and unzip yaml file
echo 'Fetch and untar the yaml files'
curl $URL | tar -xz -C $DIRECTORY --strip-components=1
fi


