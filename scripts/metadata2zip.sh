#!/bin/bash

set -e

filename=${@:-pmhcmds-spec-meta.zip}

# named pipe to capture version info (doesn't create version.txt as a physical file)
GITSHA=$( git show -s --format=%H )
GITDATE=$( git log -1 --format=%cd --date=local )
# GITTAG=$( git describe --tags )
echo -e "version: $SPEC_VERSION\n\ncommit_hash: $GITSHA\ncommit_date: $GITDATE\n" > version.txt

# all json files, and the table + type csv files
cat <(find . -name "version.txt") \
    <(find . -name "*.json" ) \
	<(find ./table ./type -name "*.csv") \
	| sort | zip $filename -@
