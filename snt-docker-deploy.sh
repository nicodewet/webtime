#!/usr/bin/env bash
ssh -i /var/lib/jenkins/.ssh/deploy-user.time.makaro.io deploy-user@time.makaro.io -p 5024 <<+
echo "*** CHECK RUNNING CONTAINERS ***"
docker ps
# docker stop grave_saha && docker rm -v grave_saha
echo "*** PULL LATEST IMAGE ***"
docker pull nicodewet/timeapp:0.0.1-SNAPSHOT
echo "*** RUN LATEST IMAGE ***"
docker run -d -p 80:5000 nicodewet/timeapp:0.0.1-SNAPSHOT --name timeapp
echo "*** CHECK RUNNING CONTAINERS **"
docker ps
+