#!/usr/bin/env bash

power_source=`pmset -g batt | head -n1 | gsed -E "s/.*'([a-z]+ [a-z]+)'.*/\1/I"`
charge_status=`pmset -g batt | tail -n1 | awk '{ print $2, $3 }' | sed s/\;//g`

echo $power_source - $charge_status

