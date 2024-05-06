#!/bin/bash

SERIALNUMBER=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')

NEWNAME="nsc-mac-$SERIALNUMBER"

MAIN() {
    scutil --set ComputerName "$NEWNAME"
    scutil --set HostName "$NEWNAME"
    scutil --set LocalHostName "$NEWNAME"
    jamf recon
}

MAIN
