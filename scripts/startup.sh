#!/usr/bin/bash

# Directory of script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Change to directory of script
cd $DIR

./configure_monitors.sh
./configure_keyboard.sh
