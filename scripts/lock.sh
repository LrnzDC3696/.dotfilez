# https://www.reddit.com/r/i3wm/comments/9089o2/turn_off_screen_after_a_moment_if_locked/
maim /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f ~/Pictures/Wallpapers/Active/lockscreen_icon.png ]] && convert /tmp/screen.png ~/Pictures/Wallpapers/Active/lockscreen_icon.png -gravity center -composite -matte /tmp/screen.png
# i3lock -i /tmp/screen.png -e -f && xset s 69 69
i3lock -i /tmp/screen.png -e -f & sleep 10 && xset dpms force off
# !!! tf is this?
rm /tmp/screen.png
