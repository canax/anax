#!/usr/bin/env bash
#
# Postprocess scaffold
#

# Include ./functions.bash
source .anax/scaffold/functions.bash

# Install using composer
composer install

# Run own scaffolding scripts
printf "Execute scaffolding scripts from '.anax/scaffold/postprocessing.d/'\n"
for file in .anax/scaffold/postprocess.d/*.bash; do
    printf "."
    bash "$file"
done
printf "done.\n"
