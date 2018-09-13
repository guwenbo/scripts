#!/bin/bash


KAFKA_ENSEMBLE_PATH=/opt/kafka
KAFKA_NODE_PREFIX=node

case $1 in
    start)
        echo "begin to start kafka ensemble ..."
        for x in $(seq 1 2)
        do
            NODE_DIR=${KAFKA_ENSEMBLE_PATH}/${KAFKA_NODE_PREFIX}-$x
            echo "start node $NODE_DIR ..."
            ${NODE_DIR}/bin/kafka-server-start.sh -daemon ${NODE_DIR}/config/server.properties
            echo "start node $NODE_DIR completed ..."
        done
        echo "end to start kafka ensemble ..."
        ;;
     stop)
        echo "begin to stop kafka emsemble ..."
        KAFKA_PIDS=$(ps ax | grep -i "kafka\.kafka" | grep java | grep -v grep | awk '{print $1}')
        for pid in $KAFKA_PIDS
        do
            echo "prepare to stop $pid"
            kill -s TERM $pid
            echo "stop $pid completed"
        done
        echo "end to stop kafka emsemble ..."
        ;;
esac

