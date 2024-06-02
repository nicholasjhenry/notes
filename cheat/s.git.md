Remove a file from a git repo

    git filter-branch --index-filter 'git update-index --remove file/to/remove' master

You may also want to consider ignoring the file.

    git push origin master --force

Ignore changes to a file

    git update-index --assume-unchanged <file>
    git update-index --no-assume-unchanged <file>

Clean a directory of untracked files

    git clean -f -d

Track an upstream branch

    git checkout -t origin/feature

or

    git checkout -b foo
    git branch -u upstream/foo

Merge upstream

    git fetch upstream
    git merge upstream/master

Diff words

    git diff --word-diff

Find out which branch contains a change

    git branch --contains 50f3754

See which changes from a branch are already present upstream

    git cherry -v master

Show the last commit which message matches a regex

    git show :/fix

List commits newest to oldest

    git log

List commits with their diff

    git log -p

Only show commits whose *messages* contain the string

    git log --grep=”commit contents”

Only show commits whose *code change* contains the string

    git log -S”diff contents”

Only show commits for the given path or file

    git log -- path/or/file

Show all the lines of a file and their current commit

    git blame FILENAME

Compare a file in two branches

    git diff mybranch master -- myfile.cs
    git diff master:path/to/file.rb mybranch:path/to/file.rb

Commit msg for specific line

    git show $(git blame example.js -L 4,4 | awk '{print $1}')')

Remotes

    git remote add blank-static git://github.com/firsthand/blank-static.git
    git fetch blank-static
    git merge blank-static/master

Delete tag

    git tag -d 12345
    git push origin :refs/tags/12345

Fix broken commit

    git add ...                           # Stage a fix
    git commit --fixup=a0b1c2d3           # Perform the commit to fix broken a0b1c2d3
    git rebase -i --autosquash a0b1c2d3~1 # Now merge fixup commit into broken commit

Log

    git log --reverse

## Writing messages

Write commit messages so that:

- they complete the sentence “This commit will…”
- the commit log can be understood by your Product Owner
- they describe the “why” — because the “what” can be read in the diff

For example:

    Make the sign-up button look like all other calls to action
    Ensure the timezone is always correct on UAT
    Allow clients to retrieve the time when an application is rejected

instead of:

    Import the new LESS file on the home page
    Updated config
    Updated endpoint for rejected

Remove old remote branches

    git remote prune origin

gitrevisions - specifying revisions and ranges for git

    http://schacon.github.io/git/gitrevisions.html

## Worktree

    git worktree add --checkout ../path branch

## Allow empty

    git commit --allow-empty -m "Your msg"

### Delete all branches except master

    git branch | grep -v "master" | xargs git branch -D

### Tag

    git tag dev2-njh
    git push origin dev2-njh

### Different user

    [remote "origin"]
    url = https://nicholasjhenry-XXX@github.com/acme/stuff.git

Ignore changes in a file:

```
git update-index --assume-unchanged src/file/to/ignore
```