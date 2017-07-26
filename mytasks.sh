# !/bin/bash

# Download file from url and unzip it
# curl http://rather.long.url | tar -xz -C my_directory --strip-components=1

# convert it to universal script
# bash my_script.sh url my_directory


if [$# eq 0];
then
echo "Test for some script"
cd ~/Code/zopim/zopim-docker/vagrant
vagrant up
vagrant ssh
echo I am in docker
pwd
elif[$1 eq '-h'] 
        echo Task1: Download file from url and unzip it
        echo Usage: bash yaml-fetch.sh <'snapshot_url'> <directory>
        echo Task2: Send http request
        echo Usage: bash httprequest.sh <request_url> <method> <parameters>
        echo Task3:
        echo Task4:
elif[$1 eq '1']
 # Create directory if not exist
echo 'Create directory'
URL = $2
DIRECTORY = $3
mkdir $DIRECTORY
# Download and unzip yaml file
echo 'Fetch and untar the yaml files'
curl $URL | tar -xz -C $DIRECTORY --strip-components=1
fi

