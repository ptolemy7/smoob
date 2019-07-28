#!/bin/bash
LATESTBOOT_LIST=$(/usr/bin/snapper -c root list |
/usr/bin/grep boot |
 /usr/bin/cut -b -5)
 LATESTBOOT=$(/usr/local/sbin/max $LATESTBOOT_LIST)
echo "title Well Crap . . . (snapshot #"$LATESTBOOT")
linux /vmlinuz-linux
initrd /intel-ucode.img
initrd /initramfs-linux.img
options rd.luks.name=2efb18ce-dfa4-427c-85d9-ba8e70f28b74=crypt rootflags=subvol=arch/.snapshots/"$LATESTBOOT"/snapshot root=/dev/omnia/btrfs" > /boot/loader/entries/boot_snapshot.conf
