http://inlehmansterms.net/2014/12/14/resolving-conflicts-in-git-with-ours-and-theirs/

git checkout branch1
git rebase master

git diff

# ++<<<<<<< HEAD
# + Master change
# ++=======
# + Branch1 change
# ++>>>>>>> Branch1 branch

- note that the meaning of ours and theirs
- because rebasing replays the current branch's commits one at a time on top of the branch we want to rebase with
- ours -> master
- theirs -> Branch1

Accept all changes
    git checkout --ours filename
    # or
    git checkout --theirs filename
