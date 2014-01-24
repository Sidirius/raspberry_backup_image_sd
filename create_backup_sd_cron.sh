#!/bin/bash
#write out current crontab
crontab -l > /tmp/raspberry_backup_image_sd/create_backup_sd_cron_tmp.cron
#echo new cron into cron file
echo "0 4 * * * screen -dmS backup_sd /etc/init.d/backup_sd.sh" >> /tmp/raspberry_backup_image_sd/create_backup_sd_cron_tmp.cron
#install new cron file
crontab /tmp/raspberry_backup_image_sd/create_backup_sd_cron_tmp.cron
rm /tmp/raspberry_backup_image_sd/create_backup_sd_cron_tmp.cron