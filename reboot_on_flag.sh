#!/bin/bash
#CRONTABBED MINUTELY:* * * * * /root/reboot_on_flag.sh
FILE_FLAG_WORPRESS=
FILE_FLAG_DRUPAL=
profile=labdooEU

instance_id_WORDPRESS=
instance_id_DRUPAL=
# NEEDED Make sure aws is in the PATH
export PATH=~/.local/bin:$PATH
source ~/.profile



if test -f "$FILE_FLAG_WORPRESS"; then
    rm $FILE_FLAG_WORPRESS
    logger "JAVIER: $FILE_FLAG_WORPRESS exists Rebooting wordpress"
    /usr/local/bin/aws ec2 reboot-instances --instance-ids $instance_id_WORDPRESS --profile $profile
fi

if test -f "$FILE_FLAG_DRUPAL"; then
    rm $FILE_FLAG_DRUPAL
    logger "JAVIER: $FILE_FLAG_DRUPAL exists Rebooting drupal"
    /usr/local/bin/aws ec2 reboot-instances --instance-ids $instance_id_DRUPAL --profile $profile
fi
