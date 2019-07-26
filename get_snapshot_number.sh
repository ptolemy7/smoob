#!/bin/bash
LATESTBOOT_LIST=$(/usr/bin/snapper -c root list |
/usr/bin/grep boot |
 /usr/bin/sort -rg |
 /usr/bin/cut -b -5)
LASTESTBOOT=$(./max $LATESTBOOT_LIST)
echo $LATESTBOOT
