#!/usr/bin/env bash
#
# anax/anax-lite
#

# Get routes defined.
rsync -a vendor/anax/anax/config/router config/

# Add content/.
rsync -a vendor/anax/anax/content ./

# Get routes defined.
rsync -a vendor/anax/anax/config/router config/

# Remove unused routes
rm -f config/router/000_application.php

# Use a custom config/page.php
cp config/page.php config/page_default.php
cp config/page_anax.php config/page.php
