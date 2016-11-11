#!/usr/bin/env bash
set -ev
dotnet restore
dotnet test
dotnet build -c Release