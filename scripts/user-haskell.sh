#!/bin/bash
################################################################################
# Script
################################################################################

set -exuo pipefail

# Skeleton.
mkdir -p "/util"
mkdir -p "/util/haskell"

# Prepare.
mkdir -p "/util/haskell/stack"
chown "${USER_NAME}:${GROUP_NAME}" "/util/haskell/stack"

# The Haskell Tool Stack dynamically pulls its dependencies at build time.
# For expediency, we seek to pull, and retain, the likely needed dependencies
# in advance.
mkdir -p "/util/haskell/init"
chown "${USER_NAME}:${GROUP_NAME}" "/util/haskell/init"
git clone "git@github.com:seL4/capdl.git" "/util/haskell/init/capdl"
chown -R "${USER_NAME}:${GROUP_NAME}" "/util/haskell/init/capdl"
export STACK_ROOT="/util/haskell/stack"
sudo -u "${USER_NAME}" --preserve-env=STACK_ROOT make -C "/util/haskell/init/capdl/capDL-tool" sandbox
rm -rf "/util/haskell/init"

################################################################################
# End of file
################################################################################
