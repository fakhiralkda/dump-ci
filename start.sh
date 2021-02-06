#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

git config --global user.email "rizal82rebel@gmail.com"
git config --global user.name "rzlamrr"

bash setup.sh
bash dumpyara.sh $1 ${PAT}
