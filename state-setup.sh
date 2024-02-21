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
LECTURER_ID=teac21
#
# 1. Source directory and its version
# ===================================
#
# version of STATE
#
#VERSION=''
VERSION='5.6.14'
if [ -z ${VERSION} ];
then
STATE_SRC='state'
else
STATE_SRC='state-'${VERSION}
fi
# 
# STATE root directory
#
ROOT_DIR=/home/CMD/${LECTURER_ID}/STATE
# ROOT_DIR=${HOME}/STATE
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
cd src; cp -R $SRC_DIR state; cd ..
# cd src; ln -fs $SRC_DIR state; cd ..
#
# 3. GNCPP directory
# ==================
#
ln -s ${GNCPP_DIR}
#
# 4. Example directory
# ====================
#
git clone -b cmd_beginner https://github.com/ikuhamada/state-examples.git examples
#
# 5. Add a path to the utility directory
# ======================================
#
echo "export PATH=${PATH}:${ROOT_DIR}/src/state/util/bin" >> ~/.bashrc; source ~/.bashrc
# echo "export PATH=${PATH}:`pwd`/src/state/util/bin" >> ~/.bashrc; source ~/.bashrc
# echo "export PATH=${PATH}:${SRC_DIR}/util/bin" >> ~/.bashrc; source ~/.bashrc
#
#####################
# End of the script #
#####################
