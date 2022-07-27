#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cp $HOME/.config/i3/config $SCRIPT_DIR/i3/
cp $HOME/.config/polybar/config.ini $SCRIPT_DIR/polybar/
cp $HOME/.config/polybar/launch.sh $SCRIPT_DIR/polybar/
cp $HOME/.config/picom/config $SCRIPT_DIR/picom/

