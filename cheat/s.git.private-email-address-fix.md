```
# Install if needed (macOS)
brew install git-filter-repo

# From your repo root, rewrite all commits
git filter-repo --email-callback '
    return email if email != b"old@personal.com" else b"new@email.com"
'
```