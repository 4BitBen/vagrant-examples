#!/usr/bin/env bash

while [ true ]; do
  echo -n `date` " "
  curl --silent http://192.168.50.60/ping
  sleep 0.5
done
