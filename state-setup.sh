#!/bin/sh
########################################################################
#                                                                      #
# A script to setup the STATE directories                              #
#                                                                      #
########################################################################
#
# 0. User ID of the lecturer
# ==========================
#
LECTURE_ID=teac21
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
ROOT_DIR=/home/CMD/${LECTURE_ID}/STATE
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
mkdir -p ./src
#
cd src; ln -s $SRC_DIR state; cd ..
#
# 3. GNCPP directory
# ==================
#
ln -s ${GNCPP_DIR}
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
