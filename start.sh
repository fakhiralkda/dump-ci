#!/bin/bash

git config --global user.email "rzlamrr.dvst@protonmail.com"
git config --global user.name "rzlamrr"

git clone https://github.com/DroidDumps/phoenix_firmware_dumper -q dumper
cd dumper || exit

echo ${PAT} > .github_token
echo ${ORG} > .github_orgname
echo ${TOKEN} > .tg_token
echo "-1001437241144" > .tg_chat

sudo ./setup.sh
./dumper.sh $1
