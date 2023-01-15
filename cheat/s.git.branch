## Branching of an existing feature branch

If a feature branch is pending review and you wish to branch off from that branch for a new feature follow this strategy to avoid merge conflicts:

1. branch from master -> your_new_branch
2. squash merge branch_pending_review into your_new_branch:
   * git merge --squash other_branch
   * git commit
3. When branch_pending_review is merged into master, rebase your_new_branch with master.
