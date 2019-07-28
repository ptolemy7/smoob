#!/bin/bash
CURRENT_DIR=$(pwd)

cd max
$HOME/.cargo/bin/cargo build --release
sudo ln -sf $CURRENT_DIR/max/target/release/max /usr/local/sbin/
cd ..
sudo ln -sf $CURRENT_DIR/update_boot_entry.sh /usr/local/sbin/
sudo ln -sf $CURRENT_DIR/systemd_files/sample_boot_entry /usr/local/sbin/
cd systemd_files
sudo cp $(ls) /etc/systemd/system/
sudo systemctl enable update_snapshot_entry.timer
