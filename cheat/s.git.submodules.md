https://github.blog/2016-02-01-working-with-submodules/

Work with a specific tag:

    cd submodule_directory
    git checkout v1.0
    cd ..
    git add submodule_directory
    git commit -m "moved submodule to v1.0"
    git push

Then, another developer who wants to have submodule_directory changed to that tag, does this

    git pull
    git submodule update

`git pull` changes which commit their submodule directory points to. 'git submodule update' actually merges in the new code.

 git submodule update --init  packages/message_store/priv/message-db

## Delete a submodule

1. Delete the relevant section from the .gitmodules file.
2. Stage the .gitmodules changes git add .gitmodules
3. Delete the relevant section from .git/config.
4. Run git rm --cached path_to_submodule (no trailing slash).
5. Run rm -rf .git/modules/path_to_submodule (no trailing slash).
6. Commit git commit -m "Removed submodule "
7. Delete the now untracked submodule files rm -rf path_to_submodule

https://gist.github.com/myusuf3/7f645819ded92bda6677

## Git External

    https://github.com/dcestari/git-external
