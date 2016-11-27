# Onboarding

This page serves as background information for new members (developers with commit privileges who will directly contribute to the project in one way or another).

## Guide 

[Your First ASP.NET Core Application on a Mac Using Visual Studio Code](https://docs.asp.net/en/latest/tutorials/your-first-mac-aspnet.html)

## Build and Run

    $ dotnet restore
    $ dotnet build (optional, build will also happen when it's run)
    $ dotnet run

## Docker Engine: Build and Run

[Building Docker Images for .NET Core Applications](https://docs.microsoft.com/en-us/dotnet/articles/core/docker/building-net-docker-images)
[Microsoft .NET Docker Hub](https://hub.docker.com/r/microsoft/dotnet/)

    Nicos-Air:MyFirstApp nico$ docker build -t nicodewet/timeapp .
    Nicos-Air:MyFirstApp nico$ docker run -p 5000:5000 nicodewet/timeapp

### Docker Engine: Production

    Nicos-Air:WebTime nico$ dotnet publish
    Nicos-Air:WebTime nico$ sudo npm install -g yo generator-aspnet generator-docker
    Nicos-Air:WebTime nico$ yo docker
    Nicos-Air:WebTime nico$ ./dockerTask.sh build release
    Nicos-Air:WebTime nico$ docker run -p 5000:5000 nicodewet/timeapp

### Docker Hub: Publish

    Nicos-Air:WebTime nico$ docker login
    Nicos-Air:WebTime nico$ docker push nicodewet/timeapp

## Bower

[Managing Client-Side Packages with Bower](https://docs.asp.net/en/latest/client-side/bower.html)

1. create bower.json which will specify dependencies
2. create .bowerrc which will specify where to put the dependencies (see .bowerrc section)
3. run $ bower install
4. notice that your wwwroot folder now has a lib directory with a folder for each dependency with both raw artifacts and a dist folder
5. in the case of say jquery and bootstrap, you'll find the artifacts are not in a version specific folder, this will create problems
down the line when you want to upgrade all your clients to a new version, so in say wwwroot/lib/bootstrap create say 3.3.7 and move
the dist folder across, then only commit 3.3.7 to your own repo with the said dist folder

### .bowerrc

    {
      "directory": "wwwroot/lib"
    }

# Welcome to ASP.NET Core

We've made some big updates in this release, so it’s **important** that you spend a few minutes to learn what’s new.

You've created a new ASP.NET Core project. [Learn what's new](https://go.microsoft.com/fwlink/?LinkId=518016)

## This application consists of:

*   Sample pages using ASP.NET Core MVC
*   [Bower](https://go.microsoft.com/fwlink/?LinkId=518004) for managing client-side libraries
*   Theming using [Bootstrap](https://go.microsoft.com/fwlink/?LinkID=398939)

## How to

*   [Add a Controller and View](https://go.microsoft.com/fwlink/?LinkID=398600)
*   [Add an appsetting in config and access it in app.](https://go.microsoft.com/fwlink/?LinkID=699562)
*   [Manage User Secrets using Secret Manager.](https://go.microsoft.com/fwlink/?LinkId=699315)
*   [Use logging to log a message.](https://go.microsoft.com/fwlink/?LinkId=699316)
*   [Add packages using NuGet.](https://go.microsoft.com/fwlink/?LinkId=699317)
*   [Add client packages using Bower.](https://go.microsoft.com/fwlink/?LinkId=699318)
*   [Target development, staging or production environment.](https://go.microsoft.com/fwlink/?LinkId=699319)

## Overview

*   [Conceptual overview of what is ASP.NET Core](https://go.microsoft.com/fwlink/?LinkId=518008)
*   [Fundamentals of ASP.NET Core such as Startup and middleware.](https://go.microsoft.com/fwlink/?LinkId=699320)
*   [Working with Data](https://go.microsoft.com/fwlink/?LinkId=398602)
*   [Security](https://go.microsoft.com/fwlink/?LinkId=398603)
*   [Client side development](https://go.microsoft.com/fwlink/?LinkID=699321)
*   [Develop on different platforms](https://go.microsoft.com/fwlink/?LinkID=699322)
*   [Read more on the documentation site](https://go.microsoft.com/fwlink/?LinkID=699323)

## Run & Deploy

*   [Run your app](https://go.microsoft.com/fwlink/?LinkID=517851)
*   [Run tools such as EF migrations and more](https://go.microsoft.com/fwlink/?LinkID=517853)
*   [Publish to Microsoft Azure Web Apps](https://go.microsoft.com/fwlink/?LinkID=398609)

We would love to hear your [feedback](https://go.microsoft.com/fwlink/?LinkId=518015)