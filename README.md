# Boot Entry Crater for btrfs Snapshots on Systemd-boot
###### (The name is a work in progress)

This script and accompanying systemd files are meant to do exactly what the title states, create a boot option on systemd boot for the latest snapshot which actually booted, something which can be very useful on a rolling release such as Arch Linux

The inspiration for this script came from a much more advanced tool created by OpenSUSE which works with grub. In fact the underlying tool used here, Snapper, is indeed the same, it is merely a little imitation to work with systemd-boot because because I have found it much easier to work with than grub. However that is just my 2 cents in there.

In the actual script itself, user beware, are the peculiar options unique to my setup, the goal is to at some point in the future generate these particulars from the current loader, but alas this is a work in progress. Until then, you MUST input the things in manually for it to work. Apologies about that.

Cheers

~D
