#!/bin/bash

run() {
    echo "Copying files . . . "
    install -D $(pwd)/systemd_files/update_snapshot_entry.timer /etc/systemd/system/
    install -D $(pwd)/systemd_files/update_snapshot_entry.service /etc/systemd/system/
    install -D $(pwd)/update_snapshot_entry.sh /usr/local/sbin/
    echo "Setting systemd timers up"
    systemctl enable snapper-boot.timer &&
    systemctl enable update_snapshot_entry.timer
}
#Just checking here to make sure snapper is installed . . . 
if [[ -e  /usr/bin/snapper ]]
then
  run
else
  echo "Error, snapper is not installed!! Please install snapper to continue"
fi
