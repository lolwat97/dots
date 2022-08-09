#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cp $SCRIPT_DIR/i3/config $HOME/.config/i3/ 
cp $SCRIPT_DIR/polybar/config.ini $HOME/.config/polybar/
cp $SCRIPT_DIR/polybar/launch.sh $HOME/.config/polybar/ 
cp $SCRIPT_DIR/picom/config $HOME/.config/picom/ 
cp -r $SCRIPT_DIR/rofi/* $HOME/.config/rofi/

cp $SCRIPT_DIR/wpg_templates/* $HOME/.config/wpg/templates/
ln -s $HOME/.config/i3/config $HOME/.config/wpg/templates/i3
ln -s $HOME/.config/polybar/config.ini $HOME/.config/wpg/templates/polybar-short
ln -s $HOME/.config/polybar/config.ini $HOME/.config/wpg/templates/polybar-full
ln -s $HOME/.config/rofi/launchers/coltorful/launcher.sh $HOME/.config/wpg/templates/rofi-launcher-colorful

# Should also restart picom and polybar
i3 restart
