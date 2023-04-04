#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

mkdir -p $DIR/data

while true; do
rm -rf $DIR/basic.xml

echo "Downloading latest iCal data..."
python3 $DIR/ical_2_xmltv.py "https://calendar.google.com/calendar/ical/mg877fp19824mj30g497frm74o%40group.calendar.google.com/public/basic.ics" "TWiT.tv"

mv $DIR/basic.xml $DIR/data/
echo done.

sleep 86400
done
