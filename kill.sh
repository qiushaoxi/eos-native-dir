#!/bin/bash

DIR=$PWD

    if [ -f $DIR"/eos.pid" ]; then
	pid=`cat $DIR"/eos.pid"`
	echo $pid
	kill $pid
	rm -r $DIR"/eos.pid"

	echo -ne "Stoping Nodeos"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rNodeos Stopped.    \n"
    fi