#!/bin/bash

echo "::group::Preparation"
rm -rf .git
git config --global user.email "rzlamrr.dvst@protonmail.com"
git config --global user.name "rzlamrr"
echo "::endgroup::"

echo "::group::Clone and set Env"
git clone https://github.com/DroidDumps/phoenix_firmware_dumper dumper
cd dumper || exit

echo ${PAT} > .github_token
echo ${ORG} > .github_orgname
echo ${TOKEN} > .tg_token
echo "-1001437241144" > .tg_chat

sed -i "s/[p][r][i][n][t][f][ ][\"][\][n][\][n][>][D][u][m][p][e][d][ ][b][y]/#/g" dumper*
echo "::endgroup::"

echo "::group::Setup"
sudo ./setup.sh
echo "::endgroup::"

echo "::group::Dumpyara"
./dumper.sh $1
echo "::endgroup::"

echo "::group::Post Action"
rm .github_* .tg_*
echo "::endgroup::"
