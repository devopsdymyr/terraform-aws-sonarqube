#!/bin/sh
set -eu
export DIR="${PWD}"
export AWS_DEFAULT_REGION=eu-west-1
cd ${DIR}/secret-source/examples/${directory}
DB_INDENTIFIER=`grep name_prefix main.tf | sed 's/^[^"]*"\([^"]*\)".*/\1/'`-final-none
aws rds delete-db-snapshot --db-snapshot-identifier $DB_INDENTIFIER