Save a file with root permissions:

    :w !sudo tee %

Format to 80 chars:

    gq

Send to Tmux

    call Send_to_Tmux('(load-file "'.expand('%').'")'."\n")

Mapping to key

    map ,c :call Send_to_Tmux('(load-file "'.expand('%').'")'."\n")<CR>

Record marco

    q<letter> # to start
    q # to quit
    @<letter> # to play
    n @<letter> # n times

Replace across args

    bufdo normal! @a

Reload vimrc

    :source $MYVIMRC

Change background

    set background=dark

Switch panes

    Ctrl-w x
    Ctrl-w r

Switch vertical -> horizontal

    Ctrl-w t
    Ctrl-w K

Switch horizontal -> vertical

    Ctrl-w t
    Ctrl-w H

Paste history

    reg

JSON Pretty

    %!python -m json.tool

Bookmark

    ma # set
    `a # goto

Format (e.g. wrap markdown):

    # select v
    gq

Replace with new line chars:

	'<,'>s/{STRING}/\n/g
