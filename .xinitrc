{ sleep 10; [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap; } &
exec ck-launch-session xfce4-session
