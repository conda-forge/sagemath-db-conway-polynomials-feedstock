#!/bin/bash

# Download the build script from sage and use it
curl -L -O https://raw.githubusercontent.com/sagemath/sage/8.0.beta10/build/pkgs/conway_polynomials/spkg-install
# Sage packages are extracted to src. Simulate that by making a symlink to current dir
ln -s . src

export SAGE_SHARE=$PREFIX/share
python spkg-install
