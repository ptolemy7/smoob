#!/bin/bash
latestboot_array=($(/usr/bin/snapper -c root list |
/usr/bin/grep boot |
/usr/bin/cut -b -5 |
/usr/bin/sort -nr))
echo "title Well Crap . . . (snapshot #"${latestboot_array[0]}")
linux /vmlinuz-linux
initrd /intel-ucode.img
initrd /initramfs-linux.img
options rd.luks.name=2efb18ce-dfa4-427c-85d9-ba8e70f28b74=crypt rootflags=subvol=arch/.snapshots/"${latestboot_array[0]}"/snapshot root=/dev/omnia/btrfs" > /boot/loader/entries/boot_snapshot.conf
