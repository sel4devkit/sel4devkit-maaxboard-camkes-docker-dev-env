#!/bin/bash
################################################################################
# Script
################################################################################

set -exuo pipefail

# Acquire probable python dependencies for onward tool chains.
# Acquiring these in advance, brings a performance benefit.
pip3 install "aenum"
pip3 install "autopep8==2.3.1"
pip3 install "bs4"
pip3 install "cmake-format==0.4.5"
pip3 install "concurrencytest"
pip3 install "future"
pip3 install "guardonce"
pip3 install "hypothesis"
pip3 install "jinja2"
pip3 install "jsonschema"
pip3 install "libarchive-c"
pip3 install "lxml"
pip3 install "ordered-set"
pip3 install "pexpect"
pip3 install "ply"
pip3 install "plyplus"
pip3 install "psutil"
pip3 install "pycparser"
pip3 install "pyelftools"
pip3 install "pyfdt"
pip3 install "pyyaml"
pip3 install "sel4-deps"
pip3 install "sh"
pip3 install "six"
pip3 install "sortedcontainers"
pip3 install "protobuf<=3.20.*"

################################################################################
# End of file
################################################################################
