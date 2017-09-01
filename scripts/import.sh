#!/usr/bin/env bash
mysql --verbose -u root -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < /tmp/db/db.sql

