#!/usr/bin/env bash

TRAPPING=0
trap "{ echo finishing; TRAPPING=1; }" SIGINT

while :
do
  tools/build.sh
  RET=$?
  if [ $RET -eq 0 ]; then
    echo "success"
  else
    echo "error: $RET"
  fi
  if [ $TRAPPING -eq 0 ]; then
    sleep 1
  else
    echo "done"
    exit 0
  fi
done
