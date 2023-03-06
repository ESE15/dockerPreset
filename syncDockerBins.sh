#!/usr/bin/zsh
set -euo pipefail

mkdir -p $HOME/bin

BASEDIR=$(dirname "$0")

# pg
ln -rsf ${BASEDIR}/bin/* ~/bin/
#ln -r

# mysql

# redis

echo 'Sync Complete. run this command "source ~/.profile"'