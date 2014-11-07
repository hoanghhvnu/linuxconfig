# Make Super_R key as control
xmodmap -e 'keycode 134 = Super_R'
xmodmap -e 'remove mod4 = Super_R'
xmodmap -e 'add control = Super_R'
xmodmap -e 'keycode 135 = Caps_Lock'
#xmodmap -e 'remove keycode 135 = Menu'
#xmodmap -e 'add control = Super_R'
