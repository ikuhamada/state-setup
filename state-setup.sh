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
#VERSION=''
VERSION='5.6.22'
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
wget https://prec.eng.osaka-u.ac.jp/06/cmd/state-5.6.22.tgz
tar zxf state-5.6.22.tgz
ln -s state-5.6.22 state
rm -f state-5.6.22.tgz
cd ..
#
# 3. GNCPP directory
# ==================
#
wget https://prec.eng.osaka-u.ac.jp/06/cmd/gncpp.tgz
tar zxf gncpp.tgz
rm -f gncpp.tgz
#
# 4. Example directory
# ====================
#
git clone -b cmd_sc https://github.com/ikuhamada/state-examples.git examples
#
# 5. Add a path to the utility directory
# ======================================
#
echo "export PATH=${PATH}:${SRC_DIR}/util/bin" >> ~/.bashrc; source ~/.bashrc
#
# 6. Add modules necessary to build STATE
# =======================================
#
echo "module purge"                         >> ~/.bashrc
echo "module load oneapi_compiler/2023.0.0" >> ~/.bashrc
echo "module load oneapi_mkl/2023.0.0"      >> ~/.bashrc
echo "module load oneapi_mpi/2023.0.0"      >> ~/.bashrc
#
source ~/.bashrc
#
#####################
# End of the script #
#####################
