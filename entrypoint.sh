#!/bin/bash -e

bin/rake db:prepare
rm -rf tmp/pids/server.pid && bin/rails s -p 3000 -b 0.0.0.0
