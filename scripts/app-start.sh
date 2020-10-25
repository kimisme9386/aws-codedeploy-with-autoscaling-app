#!/bin/bash

cd /var/www/

nohup php -S 127.0.0.1:8000 -t public > /dev/null 2>&1 &

exit 0
