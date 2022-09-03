Don't update under Tmux

    brew update
    brew doctor
    brew outdated
    brew upgrade <formulae name>
    brew cleanup

Errors

    error: The following untracked working tree files would be overwritten by merge:
    Library/Formula/libarchive.rb

    cd /usr/local/Library/Formula
    git reset --hard FETCH_HEAD

Vim

    brew install macvim --override-system-vim

Commands

    brew services restart mysql
    brew services list

Cask

    brew cask list
    brew install --force <app>

Errors:

    # invalid 'depends_on macos' value: unknown or unsupported macOS version
    /usr/bin/find "$(brew --prefix)/Caskroom/"*'/.metadata' -type f -name '*.rb' -print0 | /usr/bin/xargs -0 /usr/bin/perl -i -pe 's/depends_on macos: \[.*?\]//gsm;s/depends_on macos: .*//g'
