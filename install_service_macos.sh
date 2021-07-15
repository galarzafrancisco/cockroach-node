#!/bin/bash

# Make service
./make_plist.sh

# Copy service
cp local.cockroach.plist ~/Library/LaunchAgents/local.cockroach.plist

# Start service
launchctl load ~/Library/LaunchAgents/local.cockroach.plist
