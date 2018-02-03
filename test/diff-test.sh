#!/bin/bash

rm -rf ./output

# Diff from schematics
python ../eagle-diff \
    --eagle=/Applications/EAGLE-6.6.0/EAGLE.app/Contents/MacOS/EAGLE \
    ./boards/led_buttons-1/led_buttons-1.sch \
    ./boards/led_buttons-2/led_buttons-2.sch \
    ./output

# Diff from boards
python ../eagle-diff \
    --force \
    --eagle=/Applications/EAGLE-6.6.0/EAGLE.app/Contents/MacOS/EAGLE \
    ./boards/led_buttons-1/led_buttons-1.brd \
    ./boards/led_buttons-2/led_buttons-2.brd \
    ./output