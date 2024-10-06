#!/usr/bin/bash

# Absolute path to this script. /home/user/bin/foo.sh
SCRIPT=$(readlink -f $0)

# Absolute path this script is in. /home/user/bin
export SCRIPT_PATH=`dirname $SCRIPT`

. ${SCRIPT_PATH}/config.cfg

echo ""
echo "Installing inv_sig_helper inside ${DOCKER_CONTAINER_NAME} docker container"
echo ""

# Change directory in case being called with absolute path from a different PWD
cd ${SCRIPT_PATH}

git pull

cargo build --release