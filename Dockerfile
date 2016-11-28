FROM microsoft/dotnet:1.1.0-runtime
MAINTAINER Nico de Wet <nico@nicodewet.com>
WORKDIR /app
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
ENTRYPOINT ["dotnet", "WebTime.dll"]
COPY . /app
