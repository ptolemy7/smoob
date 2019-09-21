#Maintainer: Dalton Sconce <dsconce@protonmail.com>
pkgname=snapper-menu-option
pkgver=0.9.1
pkgrel=1
epoch=
pkgdesc="Adds an option to systemd-boot menu to boot into a snapshot"
arch=(any)
url=""
license=('GPL')
groups=()
depends=('systemd' 'snapper' 'sed' 'coreutils')
install=
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/ptolemy7/snapper-menu-option/raw/master/tarball/v${pkgver}.tar.gz")
package() {
  mkdir -p $pkgdir/etc/systemd/system/
  mkdir -p $pkgdir/usr/local/sbin/
  install -D ./systemd_files/* $pkgdir/etc/systemd/system/
  install -D update_snapshot_entry $pkgdir/usr/local/sbin/snapper-menu-update
}
# md5sums=('62fe367b708cbe8f11ffe77dddfbc0e9')

md5sums=('7520dabe76b0d555fa667cb5859e2659')
