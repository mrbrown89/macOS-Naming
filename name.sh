#!/bin/bash

ORG=
DEPT=
SERIALNUMBER=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}' | sed 's/.*\(...\)/\1/')


NEWNAME="$ORG-$DEPT-$SERIALNUMBER"

MAIN() {
    scutil --set ComputerName "$NEWNAME"
    scutil --set HostName "$NEWNAME"
    scutil --set LocalHostName "$NEWNAME"
    jamf recon
}

MAIN
