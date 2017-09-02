#!/bin/bash - 
#===============================================================================
#
#          FILE: rip.sh
# 
#         USAGE: ./rip.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/16/2017 14:58
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
for i in $(awk -F'\t' '{print $1}' new.csv); do echo $i |  python getyt.py | grep -v google | head -n1; done > list
youtube-dl $(cat list)

