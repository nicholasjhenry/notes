
  Track an upstream branch

    git checkout -t origin/feature

  or

    git checkout -b foo
    git branch -u upstream/foo

  Merge upstream

    git fetch upstream
    git merge upstream/master