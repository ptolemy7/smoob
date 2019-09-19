#!/bin/bash
#Define an array of this somewhat annoying pipe
#Firstly, get the list of snapshots the official way through snapper
#Secondly, grep for the snapshots taken on boot_snapshot
#Thirdly, cut everything down to size of just the snapshot numbers
#Finally, sort it all into an array with the biggest as the first element
latestboot_array=($(/usr/bin/snapper -c root list |
/usr/bin/grep boot |
/usr/bin/cut -b -5 |
/usr/bin/sort -nr))
#Even though we have the entire list as an array, we only use the first element
#We only use the first element because all this does is make an entry for the
#firt element of the array as it is the latest one which booted correctly
#What follows from here is just what are my personal options for booting with the
#array number inserted into the appropriate place, I would have assigned a new
#variable for the latest boot number buuuut it is only used in 2 places, so
#I thought why mess with it
echo "title Well Crap . . . (snapshot #"${latestboot_array[0]}")
linux /vmlinuz-linux
initrd /intel-ucode.img
initrd /initramfs-linux.img
options rd.luks.name=2efb18ce-dfa4-427c-85d9-ba8e70f28b74=crypt rootflags=subvol=arch/.snapshots/"${latestboot_array[0]}"/snapshot root=/dev/omnia/btrfs" > /boot/loader/entries/boot_snapshot.conf
