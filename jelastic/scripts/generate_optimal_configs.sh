#!/bin/bash -x

SED=$(which sed);

#
# config optimizer for redis
#

#memory_total=`free -m | grep Mem | awk '{print $2}'`;
#let maxmemory=memory_total-50; 
#[ ! -z "$maxmemory" ] && export REDIS_MAXMEMORY=$maxmemory;


