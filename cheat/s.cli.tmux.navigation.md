# tmux Panes & Windows Cheatsheet

`prefix` = your prefix key (default `C-b`). Commands shown as `:command` are typed at the tmux command prompt (`prefix + :`), or run from a shell as `tmux command`.

---

## Identifying panes

| Action | Command |
|---|---|
| Flash pane numbers on screen | `prefix + q` |
| Jump to a pane while numbers show | press that digit |
| List panes in current window | `:list-panes` / `tmux list-panes` |
| List panes in current session | `tmux list-panes -s` |
| List every pane everywhere | `tmux list-panes -a` |

`list-panes` output: `0: [80x24] [history 0/2000, 0 bytes] %12 (active)`

- `0` — pane **index** (shifts when panes close)
- `%12` — pane **ID** (unique and stable; safest in scripts)

**Target syntax:** `session:window.pane` — e.g. `:3.1`, `main:2.0`, `%12`

Shorthands: `:3` = window 3 in current session · `.1` = pane 1 in current window · `!` = last window · `^` `$` = first/last

### Keep indices always visible

```tmux
set -g pane-border-status top
set -g pane-border-format " #P: #{pane_current_command} "
set -g display-panes-time 2000   # ms that prefix+q stays up
```

---

## Moving panes between windows

| Action | Command |
|---|---|
| Pane → new window | `prefix + !` or `:break-pane` |
| Pane → new window, stay put | `:break-pane -d` |
| Pane → new *named* window | `:break-pane -n logs` |
| Pane → existing window 3 | `:join-pane -t :3` |
| ...as a horizontal split | `:join-pane -h -t :3` |
| ...placed before target pane | `:join-pane -b -t :3` |
| Pull window 2's pane 1 here | `:join-pane -s :2.1` |
| Move across sessions | `:join-pane -s other:1.0 -t :2` |

> **Gotcha:** `join-pane` refuses to move a pane into the window it already occupies — *"can't join a pane to its own window."* Break it out first, then join.

### Useful bindings

```tmux
bind-key J command-prompt -p "join pane from:" "join-pane -s '%%'"
bind-key S command-prompt -p "send pane to:"   "join-pane -t '%%'"
```

---

## Rearranging within a window

| Action | Command |
|---|---|
| Swap with previous / next pane | `prefix + {` / `prefix + }` |
| Swap with a specific pane | `:swap-pane -s .2` |
| Rotate panes | `prefix + C-o` |
| Cycle layouts | `prefix + space` |
| Named layouts | `:select-layout tiled` (also `even-horizontal`, `even-vertical`, `main-horizontal`, `main-vertical`) |
| Resize | `prefix + C-<arrow>` or `:resize-pane -D 10` |
| Zoom / unzoom | `prefix + z` |

---

## Creating, navigating, closing

| Action | Command |
|---|---|
| Split vertical / horizontal | `prefix + %` / `prefix + "` |
| Split, inherit cwd | `:split-window -h -c "#{pane_current_path}"` |
| Move by direction | `prefix + <arrow>` |
| Last pane | `prefix + ;` |
| Cycle panes | `prefix + o` |
| Select by index | `:select-pane -t .2` |
| Close pane | `prefix + x` or `exit` |
| Kill all others in window | `:kill-pane -a` |

---

## Windows

| Action | Command |
|---|---|
| New window | `prefix + c` |
| Rename | `prefix + ,` |
| Select by number | `prefix + 0`–`9` |
| Next / previous / last | `prefix + n` / `prefix + p` / `prefix + l` |
| Choose from a list | `prefix + w` |
| Renumber window | `:move-window -t 3` |
| Close gaps in numbering | `:move-window -r` |
| Kill window | `prefix + &` |

---

## Scripting notes

Every key binding maps to a command you can run from a shell, which makes session layouts scriptable:

```bash
tmux new-session  -d -s dev -n server
tmux send-keys    -t dev:server 'iex -S mix phx.server' C-m
tmux new-window   -t dev -n editor
tmux split-window -t dev:editor -h -c "#{pane_current_path}"
tmux select-pane  -t dev:editor.0
tmux attach       -t dev
```

Capture a pane's output:

```bash
tmux capture-pane -p -t %12            # visible screen
tmux capture-pane -p -S -3000 -t %12   # last 3000 scrollback lines
```

Handy format variables for `pane-border-format`, `status-right`, etc.: `#P` (index), `#D` (ID), `#{pane_current_command}`, `#{pane_current_path}`, `#{pane_width}x#{pane_height}`, `#{?pane_active,ACTIVE,}`.
