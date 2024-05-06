#!/bin/bash

SERIAL_NUMBER=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')
DEPT=it
echo nsc-mac-$DEPT-$SERIAL_NUMBER
