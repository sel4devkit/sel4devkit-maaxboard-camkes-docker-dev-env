#!/bin/bash
################################################################################
# Script
################################################################################

set -exuo pipefail

# Acquire probable python dependencies for onward tool chains.
# Acquiring these in advance, brings a performance benefit.
pip install "aenum"
pip install "autopep8==2.3.1"
pip install "bs4"
pip install "cmake-format==0.4.5"
pip install "concurrencytest"
pip install "future"
pip install "guardonce"
pip install "hypothesis"
pip install "jinja2"
pip install "jsonschema"
pip install "libarchive-c"
pip install "lxml"
pip install "ordered-set"
pip install "pexpect"
pip install "ply"
pip install "plyplus"
pip install "psutil"
pip install "pycparser"
pip install "pyelftools"
pip install "pyfdt"
pip install "pyyaml"
pip install "sel4-deps"
pip install "sh"
pip install "six"
pip install "sortedcontainers"
pip install "protobuf<=3.20.*"

################################################################################
# End of file
################################################################################
