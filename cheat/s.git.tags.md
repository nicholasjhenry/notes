# Working with git tags

List of tags:

    git tag -l

Tag current work:

    git tag v1.0

Tag a commit:

    git tag name commit-id

And to get the commit-id from the name:

    git rev-parse name

Switch to a tag:

    git checkout 0.9

`HEAD` refers to head of the current branch.

Push tags

    git push origin <tag_name>

Delete remote tags

    git push --delete origin <tag_name>
