#!/bin/sh

/scripts/repo-rights.sh

sudo /usr/local/bin/dockerd &
echo "Started Docker in Docker."

# -D flag avoids executing sshd as a daemon
/usr/sbin/sshd -D
