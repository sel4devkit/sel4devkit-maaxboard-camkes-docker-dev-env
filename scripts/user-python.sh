#!/bin/bash
################################################################################
# Script
################################################################################

set -exuo pipefail

# Skeleton.
mkdir -p "/util"
mkdir -p "/util/python"

# For chosen user, download to cache anticipated python dependencies for
# onward tool chains.
mkdir -p "/util/python/cache"
chown "${USER_NAME}:${GROUP_NAME}" "/util/python/cache"
pip config --global set global.cache-dir "/util/python/cache"

mkdir -p "/util/python/download"
chown "${USER_NAME}:${GROUP_NAME}" "/util/python/download"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "aenum"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "autopep8==2.3.1"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "bs4"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "cmake-format==0.4.5"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "concurrencytest"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "future"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "guardonce"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "hypothesis"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "jinja2"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "jsonschema"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "libarchive-c"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "lxml"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "ordered-set"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "pexpect"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "ply"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "plyplus"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "psutil"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "pycparser"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "pyelftools"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "pyfdt"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "pyyaml"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "sel4-deps"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "sh"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "six"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "sortedcontainers"
sudo -u "${USER_NAME}" pip download --dest /util/python/download "protobuf<=3.20.*"
rm -rf "/util/python/download"

################################################################################
# End of file
################################################################################
