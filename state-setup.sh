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
ROOT_DIR=/opt
#
# STATE source directory
#
SRC_DIR=/opt/state-5.6.9
#
# GNCPP directory
#
GNCPP_DIR=/opt/gncpp
#
# Other utility directory
#
UTIL_DIR=/home/CMD/${LECTURER_ID}/local/bin
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
git clone -b acmd_itb_2022 https://github.com/ikuhamada/state-examples.git examples
#
# 5. Add a path to the utility directory
# ======================================
#
echo "export PATH=${PATH}:${SRC_DIR}/util/bin" >> ~/.bashrc; source ~/.bashrc
#
#####################
# End of the script #
#####################
