#!/bin/sh
########################################################################
#                                                                      #
# A script to setup the STATE directories for the supercomputer course #
#                                                                      #
########################################################################
#
# 1. Source directory and its version
# ===================================
#
# version of STATE
#
VERSION=''
#VERSION='5.6.9'
if [ -z ${VERSION} ];
then
STATE_SRC='state'
else
STATE_SRC='state-'${VERSION}
fi
# 
# STATE root directory
#
ROOT_DIR=${HOME}/STATE
#
# STATE source directory
#
SRC_DIR=${ROOT_DIR}/src/${STATE_SRC}
#
# GNCPP directory
#
GNCPP_DIR=${ROOT_DIR}/gncpp
#
# 2. STATE source directory
# =========================
#
mkdir -p ./src; cd src
#
wget http://www-cp.prec.eng.osaka-u.ac.jp/cmd/state-latest.tgz
tar zxf state-latest.tgz
rm -f state-latest.tgz
cd ..
#
# 3. GNCPP directory
# ==================
#
wget http://www-cp.prec.eng.osaka-u.ac.jp/cmd/gncpp.tgz
tar zxf gncpp.tgz
rm -f gncpp.tgz
#
# 4. Example directory
# ====================
#
git clone https://github.com/ikuhamada/state-examples.git examples
#
# 5. Add a path to the utility directory
# ======================================
#
echo "export PATH=${PATH}:${SRC_DIR}/util/bin" >> ~/.bashrc; source ~/.bashrc
#
#####################
# End of the script #
#####################
