#!/bin/bash

killall conky

conky -b -c ~/.conky/conkyrc_Grey-Black -p 8 &

exit 0
