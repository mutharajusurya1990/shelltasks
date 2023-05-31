#!/bin/bash

mkdir /currentbackup
current_date=$(date +%Y%m%d)
dset=/currentbackup
backup_file="${current_date}_backup.tar.gz"
tar -czvf "$dest/$backup_file"
echo "Backup is created for this file: $backup_file"
