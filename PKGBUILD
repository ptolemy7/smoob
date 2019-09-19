#Maintainer: Dalton Sconce <dsconce@protonmail.com>
pkgname=snapper-menu-option
pkgver=0.1.0
pkgrel=1
epoch=
pkgdesc="Adds an option to systemd-boot menu to boot into a snapshot"
arch=(any)
url=""
license=('GPL')
groups=()
depends=('systemd' 'snapper' 'sed' 'coreutils')
install=
source=("https://github.com/ptolemy7/$pkgname/tarball/$pkgname.$pkgver.tar.gz/test_build.tar.gz")
md5sum=("62fe367b708cbe8f11ffe77dddfbc0e9")
package() {
  mkdir -p $pkgdir/etc/systemd/system/
  mkdir -p $pkgdir/usr/local/sbin/
  install -D ./systemd_files/* $pkgdir/etc/systemd/system/
  install -D update_snapshot_entry.sh $pkgdir/usr/local/sbin/snapper-menu-update.sh
}
