#!/bin/bash

base="/opt/anyconnectd"

pidFile=$base/watcher.pid

echo $$ > $pidFile

	connDown=0

	output=`curl washington.uww.edu --connect-timeout 2 2>&1` && connDown=1

	if [ $connDown == 0 ]; then
		/opt/schoolvpn/connectVpn.sh > /dev/null 2>&1
		echo "VPN was disconnected, but is now connected.";
	fi

