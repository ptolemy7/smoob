#Maintainer: Dalton Sconce <dsconce@protonmail.com>
pkgname=snapper-menu-option
pkgver=0.9.0
pkgrel=1
epoch=
pkgdesc="Adds an option to systemd-boot menu to boot into a snapshot"
arch=(any)
url=""
license=('GPL')
groups=()
depends=('systemd' 'snapper' 'sed' 'coreutils')
install=
source=("${pkgname}-${pkgver}::https://raw.githubusercontent.com/ptolemy7/snapper-menu-option/testing/tarball/v${pkgver}.tar.gz")
md5sums=('62fe367b708cbe8f11ffe77dddfbc0e9')
package() {
  mkdir -p $pkgdir/etc/systemd/system/
  mkdir -p $pkgdir/usr/local/sbin/
  install -D ./systemd_files/* $pkgdir/etc/systemd/system/
  install -D update_snapshot_entry.sh $pkgdir/usr/local/sbin/snapper-menu-update.sh
}
# md5sums=('62fe367b708cbe8f11ffe77dddfbc0e9')
