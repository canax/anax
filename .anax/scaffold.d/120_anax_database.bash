#!/usr/bin/env bash
#
# anax/database
#

# Copy default config
rsync -a vendor/anax/request/config/ config/

# Make database service as not loaded in $di as default
install -d config/di_not_loaded
mv config/di/db.php config/di_not_loaded
