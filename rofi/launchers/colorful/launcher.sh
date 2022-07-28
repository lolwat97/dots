#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# style_1     style_2     style_3     style_4     style_5     style_6
# style_7     style_8     style_9     style_10    style_11    style_12

menu=$1
theme="style_$2"
dir="$HOME/.config/rofi/launchers/colorful"

# dark
ALPHA="#00000000"
BG="#292922"
FG="#cec9c5"
SELECT="#0E0E0C"

# light
#ALPHA="#00000000"
#BG="#FFFFFFff"
#FG="#000000ff"
#SELECT="#f3f3f3ff"

# accent color
ACCENT="#674e77"

# overwrite colors file
cat > $dir/colors.rasi <<- EOF
	/* colors */

	* {
	  al:  $ALPHA;
	  bg:  $BG;
	  se:  $SELECT;
	  fg:  $FG;
	  ac:  $ACCENT;
	}
EOF

rofi -no-lazy-grab -show $menu -modi drun -theme $dir/"$theme"
