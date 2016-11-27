#!/usr/bin/env bash
http_code=$(curl --write-out %{http_code} --silent --output /dev/null time.makaro.io)
echo "HTTP RESPONSE CODE: $http_code"
echo "HTTP RESPONSE CODE SHOULD BE 200"
test $http_code == "200"