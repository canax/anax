#!/usr/bin/env bash
#
# anax/anax-lite
#

# Get routes defined.
rsync -a vendor/anax/anax/config/router config/

# Remove unused routes
rm -f config/router/000_application.php

# Add content/.
rsync -a vendor/anax/anax/content ./

# Use a custom config/page.php
cp config/page.php config/page_default.php
cp config/page_anax.php config/page.php

# # Add default stylesheets
# rsync -a vendor/anax/anax/htdocs/css htdocs/

# There are some stylesheets in htdocs/css
# these are built from theme repo
# and will be replace by the below actions
git clone https://github.com/desinax/theme-dbwebb.se theme
(cd theme && make install)
make theme
