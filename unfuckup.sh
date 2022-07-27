#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cp $SCRIPT_DIR/i3/config $HOME/.config/i3/ 
cp $SCRIPT_DIR/polybar/config.ini $HOME/.config/polybar/
cp $SCRIPT_DIR/polybar/launch.sh $HOME/.config/polybar/ 
cp $SCRIPT_DIR/picom/config $HOME/.config/picom/ 

