# WebTime

[![Build Status](https://travis-ci.org/nicodewet/webtime.png?branch=master)](https://travis-ci.org/nicodewet/webtime)

An ASP.NET Core web application.

* [SNAPSHOT Pipeline](https://ci.makaro.io/job/dotnet-webtime-SNAPSHOT-pipeline/) (note documentation publication is a pipeline step called **Maven site generate and deploy**). 
* [SNAPSHOT Documentation](https://repo.makaro.io/repository/site/io.makaro-webtime-0.0.1-SNAPSHOT/)

If you are new to this project please refer to the [onboarding](https://repo.makaro.io/repository/site/io.makaro-webtime-0.0.1-SNAPSHOT/onboarding.html) documentation.

## Primary Delivery Pipeline Components

1. [.NET Core and Visual Studio Code on Mac](https://code.visualstudio.com/docs/runtimes/dotnet)
2. [GitHub](https://github.com/nicodewet/webtime)
3. [Travis CI](https://travis-ci.org/nicodewet/webtime) - https://travis-ci.org/nicodewet/webtime
4. [Jenkins 2 package on Ubuntu 16.04.1 LTS](https://ci.makaro.io) - https://ci.makaro.io
5. [Nexus 3 container on Ubuntu 16.04.1 LTS](https://repo.makaro.io) - https://repo.makaro.io
6. [Docker Hub](https://hub.docker.com/r/nicodewet/timeapp/) - https://hub.docker.com/r/nicodewet/timeapp/
7. [Show n Tell on Ubuntu 16.04.1 LTS](http://time.makaro.io) - http://time.makaro.io