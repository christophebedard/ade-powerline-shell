#!/usr/bin/env bash

set -xe

# cd "$(dirname "$(realpath "$0")")"

mkdir _opt_powerline-shell

pip3 install powerline-shell --ignore-installed --prefix _opt_powerline-shell --no-warn-script-location

cp env.sh _opt_powerline-shell/.env.sh
cp adeinit _opt_powerline-shell/.adeinit
cp .powerline-shell.json _opt_powerline-shell/
cp .bashrc _opt_powerline-shell/

mv _opt_powerline-shell _opt
