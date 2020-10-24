#!/bin/sh

HOSTNAME=$(hostname)
USERNAME=$(whoami)
TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
EXCLUDE=$(find . -name "*placeholder*" | sed s:"\./"::g | xargs)

zip -r "$USERNAME"_"$HOSTNAME"-"$TIMESTAMP".zip * -x .git README.md LICENSE build.sh $EXCLUDE
