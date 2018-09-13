#!/bin/bash

ZK_ENSEMBLE_DIR=/opt/zookeeper
ZK_NODE_PREFIX=node

case $1 in
   start)
        for x in $(seq 1 3)
        do
           cd $ZK_ENSEMBLE_DIR/${ZK_NODE_PREFIX}-$x/bin
           ./zkServer.sh start
        done
    ;;
   stop)
        for x in $(seq 1 3)
        do
           cd $ZK_ENSEMBLE_DIR/${ZK_NODE_PREFIX}-$x/bin
           ./zkServer.sh stop
        done
    ;;
esac
