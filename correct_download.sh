#!/bin/bash
#CRONTABBED: 17 3 * * * /root/correct_download.sh
cd /var/www/download
chown --recursive labdoo_write:labdoo *
chmod 755 .
chmod -R 755 *
