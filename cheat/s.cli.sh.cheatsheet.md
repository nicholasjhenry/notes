# Shell Tricks Cheatsheet

> Source: [blog.hofstede.it](https://blog.hofstede.it/shell-tricks-that-actually-make-life-easier-and-save-your-sanity/)

---

## Line Editing `[everywhere]`

| Shortcut | Action |
|---|---|
| `Ctrl+W` | Delete word before cursor |
| `Ctrl+U` | Cut from cursor → line start |
| `Ctrl+K` | Cut from cursor → line end |
| `Ctrl+Y` | Yank (paste) last cut text back |
| `Ctrl+A` / `Ctrl+E` | Jump to line start / end |
| `Alt+B` / `Alt+F` | Move back / forward one word *(Mac: enable Option as Meta)* |

---

## Navigation `[everywhere]`

| Command | Action |
|---|---|
| `cd -` | Toggle to previous directory |
| `pushd <dir>` | Change dir, push old one onto stack |
| `popd` | Return to last pushed directory |
| `$_` | Last argument of previous command — e.g. `mkdir -p /long/path && cd "$_"` |
| `Ctrl+L` | Clear screen (safe to use mid-command) |

---

## Signals & Recovery `[everywhere]`

| Shortcut | Action |
|---|---|
| `Ctrl+C` | Cancel / interrupt current command |
| `Ctrl+D` | Send EOF — logs out if prompt is empty |
| `reset` | Heal a garbled terminal after `cat`-ing a binary *(type blind, then Enter)* |
| `Ctrl+Z` → `bg` → `disown` | Suspend → background → detach from shell; survives SSH disconnect |

---

## History `[bash · zsh]`

| Shortcut | Action |
|---|---|
| `Ctrl+R` | Reverse-search command history; press again to cycle matches |
| `!!` | Expand entire previous command — classic use: `sudo !!` |
| `!$` | Expand last argument of previous command *(blind, at Enter)* |
| `ESC+.` / `Alt+.` | Insert last arg of previous command live; repeat to cycle back |
| `fc` | Open previous command in `$EDITOR` *(portable)* |
| `Ctrl+X Ctrl+E` | Edit current command in `$EDITOR` *(bash native; zsh needs config)* |

---

## Expansion & Globbing `[bash · zsh]`

| Pattern | Action |
|---|---|
| `mv filename.{txt,md}` | Brace expand → `mv filename.txt filename.md` |
| `cp pf.conf{,.bak}` | Quick backup → `cp pf.conf pf.conf.bak` |
| `mkdir -p project/{src,tests,docs}` | Create multiple directories at once |
| `**/*.ex` | Globstar recursive match *(bash: `shopt -s globstar` first; default on in zsh)* |

---

## I/O Tricks `[bash · zsh]`

| Command | Action |
|---|---|
| `> file.txt` | Truncate file in-place — preserves permissions & open handles |
| `cmd \|& tee file.log` | Pipe stdout + stderr, watch live & save to file *(shorthand for `2>&1 \|`)* |
| `diff <(sort a.txt) <(sort b.txt)` | Process substitution — treat command output as a file |

---

## Script Safety Header `[posix · sh · bash]`

Put this at the top of every script:

```bash
#!/usr/bin/env bash
set -euo pipefail

# set -e     → exit on any error
# set -u     → error on unset variable (prevents rm -rf /${TYPO}/*)
# pipefail   → pipe fails if any segment fails, not just the last
```

> ⚠️ `set -e` has edge cases inside `if`, `while`, and pipelines — know the caveats before relying on it blindly.
