#!/usr/bin/env bash

echo -n "Checking if Docker is available: "

if [ "$(docker --version)" ]
then
    echo "AVAILABLE ($(docker --version))"
else
    echo "NOT AVAILABLE!"
fi