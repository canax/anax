#!/usr/bin/env bash
#
# anax/view
#

# Create dir for own views
install -d view/sample

# Copy default config
rsync -a vendor/anax/view/config/ config/

# Copy a default view as a sample
rsync -a vendor/anax/view/view/anax/v2/content/plain.php view/sample/plain.php
