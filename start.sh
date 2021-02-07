#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt -qq -y update
apt -qq -y upgrade
apt install -qq -y git curl wget

git config --global user.email "rizal82rebel@gmail.com"
git config --global user.name "rzlamrr"

bash setup.sh
bash dumpyara.sh $1 ${PAT}
