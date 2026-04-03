
```
hub pull-request -i 99

HUB_VERBOSE=1 hub pull-request -i 99
```

Bad credentials:

```
rm ~/.config/hub
```

PR as text:

```
gh pr view 123 --json body,comments,reviews,reviewRequests,title,author > tmp/pr-123.json
gh api repos/ORGANIZATION/REPO/pulls/123/comments >> tmp/pr-123.json
```
