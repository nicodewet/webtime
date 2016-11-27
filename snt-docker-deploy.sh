#!/usr/bin/env bash
ssh -i /var/lib/jenkins/.ssh/deploy-user.time.makaro.io deploy-user@time.makaro.io -p 5024 <<+
docker ps
# stop all containers
docker stop $(docker ps -q)
# remove all containers
docker rm $(docker ps -a -q)
# pull latest
docker pull nicodewet/timeapp:0.0.1-SNAPSHOT
# run latest
docker run -d -p 80:5000 nicodewet/timeapp --name timeapp
docker ps
+