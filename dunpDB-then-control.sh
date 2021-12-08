#!/bin/bash
# dump a db as reference data.
echo "mysql dump starts..`date`"
mysqldump --all-databases > alldb.sql
echo "mysql dump ends..`date`"

# leading space is important for long comment in bash.
# https://stackoverflow.com/questions/43158140/way-to-create-multiline-comments-in-bash
: '
1) import alldb.sql to new mysqld.
2) setup all other daemons and ingest other necessary assets on the same machine.
3) client setup, then the all-in-one system is ready.
'

# playback control such as looping videos could be handled by continuous XML import, or mysqld connector via PHP. 
: '
<?php
$mysql = mysql_connect('127.0.0.1', 'user', 'pass');
?>
'
