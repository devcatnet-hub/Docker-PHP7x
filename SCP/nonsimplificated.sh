#!/bin/bash

/usr/sbin/sshd -D &
/usr/bin/php -S 0.0.0.0:8000 -t /APP
