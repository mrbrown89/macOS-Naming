#!/bin/bash

SERIAL_NUMBER=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')
DEPT=it

NEWNAME=nsc-mac-$DEPT-$SERIAL_NUMBER

MAIN() {
    scutil --set ComputerName "$NEWNAME"
    scutil --set HostName "$NEWNAME"
    scutil --set LocalHostName "$NEWNAME"
}


