#!/usr/bin/zsh
set -euo pipefail

mkdir -p $HOME/bin

BASEDIR=$(dirname "$0")

ln -rsf ${BASEDIR}/bin/* ~/bin/
chmod +x ~/bin/*

echo 'Sync Complete. run this command "source ~/.profile"'
