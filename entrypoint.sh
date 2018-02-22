#!/bin/bash
#########################################################################
# File Name: entrypoint.sh
# Version:0.1.20180222
# Created Time: 2018-02-22
#########################################################################

set -e

echo "+---------------------------------------------+"
echo "|            KMS Server On Docker             |"
echo "+---------------------------------------------+"
echo "|            Images:{kms-docker}              |"
echo "+---------------------------------------------+"
echo "|     Intro: https://github.com/ileez         |"
echo "+---------------------------------------------+"
echo ""

echo "Start KMS Service..."
/usr/local/KMS-Server/kmsrv vlmcsd -L 0.0.0.0:1688 -e -D
