#!/bin/sh

if [ $# -eq 0 ]; then
    echo "No extra command found"
else    
    echo "Running $@"
    $@
fi

exec /sbin/tini -- /usr/local/bin/jenkins.sh
