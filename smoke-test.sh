#!/usr/bin/env bash
http_code=$(curl --write-out %{http_code} --silent --output /dev/null time.makaro.io)
echo "HTTP RESPONSE CODE: $http_code"
test "$http_code" != '200' && (echo http response code was not 200; exit 1)