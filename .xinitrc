setxkbmap us -variant colemak

{ sleep 10; [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap; }
