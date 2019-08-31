#!/bin/bash
install -D system_files/* /etc/systemd/system/
install -D update_snapshot_entry.sh /usr/local/sbin/
sudo systemctl enable update_snapshot_entry.timer
