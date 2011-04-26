#!/bin/sh
#
# concat template files into single file.
# 
# Usage:
#   concat-all.sh templates.d/*.xml > all.xml
# 
# Import all.xml to Preferences/Java/Editor/Templates after restoring defaults
# because Eclipse does not omit duplicated entries.

echo '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'
echo '<templates>'
cat $* | sed -e 's#<?xml .*?>##' -e 's#<templates>##' -e 's#</templates>##'
echo '</templates>'

