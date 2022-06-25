#!/bin/bash

DATE=$1
if [ "$DATE" == "" ]; then
  echo "ERROR: Param missing. Proper use: \$log.sh <date>"
  exit
fi
TEMPLATE="$HOME/Documents/logs/template.log"
LOG="$HOME/Documents/logs/$DATE.log"
if [ ! -f "$LOG" ]; then
  cp $TEMPLATE $LOG 
fi
vim $LOG
echo "Thank you for logging your work"

