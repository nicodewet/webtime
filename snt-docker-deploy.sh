#!/usr/bin/env bash
ssh -i /var/lib/jenkins/.ssh/deploy-user.time.makaro.io deploy-user@time.makaro.io -p 5024 <<+
docker ps
docker stop evil_kowalevski && docker rm -v evil_kowalevski
docker pull nicodewet/timeapp:0.0.1-SNAPSHOT
docker run -d -p 80:5000 nicodewet/timeapp --name timeapp
docker ps
+