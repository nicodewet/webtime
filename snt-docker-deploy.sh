#!/usr/bin/env bash
ssh -i /var/lib/jenkins/.ssh/deploy-user.time.makaro.io deploy-user@time.makaro.io -p 5024 <<+
echo "*** CHECK RUNNING CONTAINERS ***"
docker ps
echo "*** STOP RUNNING CONTAINER ***"
docker stop sick_leakey && docker rm -v sick_leakey
echo "*** CHECK RUNNING CONTAINERS ***"
docker ps
echo "*** PULL LATEST IMAGE ***"
docker pull nicodewet/timeapp:0.0.1-SNAPSHOT
echo "*** RUN LATEST IMAGE ***"
docker run -d -p 80:5000 --name timeapp nicodewet/timeapp:0.0.1-SNAPSHOT
echo "*** CHECK RUNNING CONTAINERS **"
docker ps
+