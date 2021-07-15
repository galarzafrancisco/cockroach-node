#!/bin/bash

NODE_1=MBP-15-2017.local
NODE_2=MBP-15-2015.local
NODE_3=MBP-13-2011.local

WEBSERVER_PORT=26258

HOST_NAME=$NODE_1


echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE plist PUBLIC \"-//Apple Computer//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">
<plist version=\"1.0\">
    <dict>
        <key>Label</key>
            <string>local.cockroach</string>
        
        <key>UserName</key>
            <string>franciscogalarza</string>

        <key>ProgramArguments</key>
            <array>
                <string>/usr/local/bin/cockroach</string>
                <string>start</string>
                <string>--insecure</string>
                <string>--store=path=/Users/franciscogalarza/cockroach/cockroach-data</string>
                <string>--advertise-addr=$HOST_NAME</string>
                <string>--http-addr=0.0.0.0:$WEBSERVER_PORT</string>
                <string>--join=$NODE_1,$NODE_2,$NODE_3</string>
            </array>


        <key>RunAtLoad</key>
            <true/>

        <key>KeepAlive</key>
            <true/>

        <key>StandardOutPath</key>
            <string>/Users/franciscogalarza/cockroach/logs/log.log</string>
        <key>StandardErrorPath</key>
            <string>Users/franciscogalarza/cockroach/logs/error.log</string>
    </dict>
</plist>
" > local.cockroach.plist
