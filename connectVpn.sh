#!/bin/bash

username=$(username)
pw=(password)

sudo /opt/cisco/anyconnect/bin/vpn -s connect vpn.uww.edu <<"EOF"
y
n
$username
$pw
y
EOF

