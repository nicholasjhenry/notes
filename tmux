Show pane numbers:

    <C>-x q

Swap panes:

    <C>-x <C>-o

Share tmux session:

    # specify the name of your tmux socket with -S when creating it
    tmux -S /tmp/pair
    # chmod to allow other users to access it
    chmod 777 /tmp/pair

    # now the other user can connect with
    tmux -S /tmp/pair attach

Alternatively:

    https://github.com/zolrath/wemux

    wemux start # host
    wemux pair # client

Increase scrolling:

    set-option -g history-limit 3000

Powerline:
    Install VeraMono font under Firsthand/Assets/Fonts

Cycle Location of panes:

    <C>-x <C>-o

Cycle through windows:

     <C>-a p          previous window
     <C>-a n          next window

Attach to existing

    tmux attach -t <number>

Colour

    for i in {0..255}; do
        printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"
    done
