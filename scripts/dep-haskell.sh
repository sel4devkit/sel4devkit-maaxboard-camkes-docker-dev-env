#!/bin/bash
################################################################################
# Script
################################################################################

set -exuo pipefail

# By default, the Haskell Tool Stack, places configuration details in the
# invoking users Home area. This complicates the configuration of a consistent
# common environment. Instead, this is changed to an fixed global location.

# Skeleton.
mkdir -p "/util"
mkdir -p "/util/haskell"

# Prepare.
mkdir -p "/util/haskell/stack"
chmod 777 -R "/util/haskell/stack"

# The Haskell Tool Stack dynamically pulls its dependencies at build time.
# Normally, these are retained in a user specific area. For expediency, we
# seek to pull, and retain, the likely needed dependencies in advance. We do
# so as the current active user (root) and instruct Haskell (when running as a
# given user) that it may use content from this different user (root).
echo "allow-different-user: true" >> "/util/haskell/stack/config.yaml"
export STACK_ROOT="/util/haskell/stack"
mkdir -p "/util/haskell/init"
cd "/util/haskell/init"
git clone "git@github.com:seL4/capdl.git"
cd "capdl/capDL-tool"
make sandbox
rm -rf "/util/haskell/init/capdl"

################################################################################
# End of file
################################################################################
