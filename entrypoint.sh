#!/bin/sh

if [ -z "$1" ]; then
    echo "Running $@"
    $@
else
    echo "No extra command found"
fi

exec /sbin/tini -- /usr/local/bin/jenkins.sh
