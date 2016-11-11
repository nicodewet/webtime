#!/usr/bin/env bash
set -ev
# dotnet restore uses NuGet to restore dependencies as well as project-specific tools that are specified in the project.json file.
# An optional NuGet.config file specifies the feeds where the packages are located. By default packages are located
# in ~/.nuget/packages
dotnet restore
# dotnet publish compiles the application, reads through its dependencies specified in the project.json file and publishes the resulting
# set of files to a directory
dotnet publish
cd bin/Debug/netcoreapp1.0/publish && docker build -t nicodewet/timeapp .