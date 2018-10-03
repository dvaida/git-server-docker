#!/bin/sh

/scripts/repo-rights.sh

# -D flag avoids executing sshd as a daemon
/usr/sbin/sshd -D
