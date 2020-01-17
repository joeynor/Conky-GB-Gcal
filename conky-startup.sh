#!/bin/bash

killall conky

conky -b -c ~/.conky/conkyrc_GB_Gcal -p 8 &

exit 0
