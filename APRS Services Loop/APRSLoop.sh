#!/bin/bash

for (( ; ; ))
do
  pkill -f "xastir"
  xastir &
  direwolf
  sleep 60
done
