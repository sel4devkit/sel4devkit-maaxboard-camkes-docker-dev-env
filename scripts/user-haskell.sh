#!/bin/bash
################################################################################
# Script
################################################################################

set -exuo pipefail

# Skeleton.
mkdir -p "/util"
mkdir -p "/util/haskell"

# The Haskell Tool Stack dynamically pulls its dependencies at build time.
# For expediency, we seek to pull, and retain, the likely needed dependencies
# in advance.
mkdir -p "/util/haskell/stack"
mkdir -p "/util/haskell/init"
cd "/util/haskell/init"
/util/repo/repo init "git@github.com:seL4/camkes-manifest.git"
/util/repo/repo sync
mkdir "build"
cd "build"
python -m venv pyenv
source pyenv/bin/activate
pip install sel4-deps
pip install camkes-deps
pip install "protobuf<=3.20.*"
export STACK_ROOT="/util/haskell/stack"
../init-build.sh
ninja
chown --recursive "${USER_NAME}:${GROUP_NAME}" "/util/haskell/stack"
rm -rf "/util/haskell/init"

################################################################################
# End of file
################################################################################
