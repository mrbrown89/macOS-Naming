#!/bin/bash

SERIALNUMBER=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')
DEPT="$3"

NEWNAME="nsc-mac-$DEPT-$SERIALNUMBER"

MAIN() {
    scutil --set ComputerName "$NEWNAME"
    scutil --set HostName "$NEWNAME"
    scutil --set LocalHostName "$NEWNAME"
    jamf recon
}

MAIN
