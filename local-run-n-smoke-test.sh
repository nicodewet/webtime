#!/usr/bin/env bash
docker ps
docker run -d -p 5000:5000 --name timeapp nicodewet/timeapp:0.0.1-SNAPSHOT
docker ps
sleep 5
http_code=$(curl --write-out %{http_code} --silent --output /dev/null 127.0.0.1:5000)
echo "HTTP RESPONSE CODE: $http_code"
echo "HTTP RESPONSE CODE SHOULD BE 200"
test $http_code == "200"
docker stop timeapp && docker rm -v timeapp
docker ps