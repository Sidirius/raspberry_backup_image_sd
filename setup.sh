#!/bin/bash
mkdir /tmp/raspberry_backup_image_sd/
mv * /tmp/raspberry_backup_image_sd/
cd ..
rm -rf raspberry_backup_image_sd/
chmod 755 /tmp/raspberry_backup_image_sd/create_backup_sd_cron.sh
/tmp/raspberry_backup_image_sd/create_backup_sd_cron.sh