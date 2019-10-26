# Snapper Menu Option On Boot (at the moment, also known as smoob)
###### *(The name is a work in progress)*

This script and accompanying systemd files are meant to do exactly what the title states, create a boot option for systemd boot for the latest snapshot which actually booted, something which can be very useful on a rolling release such as Arch Linux

The inspiration for this script came from a much more advanced tool created by OpenSUSE which works with grub. In fact the underlying tool used here, Snapper, is indeed the same, it is merely a little imitation to work with systemd-boot because because I have found it much easier to work with than grub. However that is just my 2 cents in there.

This script does assume a few things:
1. That you have snapper set up and installed
2. That your root is on a subvolume of the actual btrfs partition
3. That your root is the default subvolume for the btrfs partition

For help setting any of thiese things up, here are some links
* [btrfs (Arch wiki)](https://wiki.archlinux.org/index.php/Btrfs "Arch wiki for btrfs in general")
* [default subvolume](https://wiki.archlinux.org/index.php/Btrfs#Changing_the_default_sub-volume "Arch wiki for the default subvolume")
* [snapper help](https://wiki.archlinux.org/index.php/Snapper "Arch wiki for snapper")

Cheers *(btw I use arch)*

~D
