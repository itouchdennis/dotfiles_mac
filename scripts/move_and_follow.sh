#!/bin/sh
/opt/homebrew/bin/rift-cli execute workspace move-window $1 
sleep 0.01
/opt/homebrew/bin/rift-cli execute workspace switch $1
