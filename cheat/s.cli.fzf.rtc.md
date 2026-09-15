**R is for Recall** (or **Rewind**): "Ctrl+R, **R**ecall what I ran."

It also matches the original meaning. In bash and zsh, Ctrl+R has always been **R**everse-i-search through history, and fzf just replaces that with a fuzzy picker. So you're "reversing" back through your past commands.

fzf sets up two other shell bindings, so here's a set of mnemonics for all three:

| Key | Action | Mnemonic |
|---|---|---|
| Ctrl+R | Command history | **R**ecall |
| Ctrl+T | Insert a file path | **T**arget file (or **T**ree) |
| Alt+C | cd into a directory | **C**hange directory |

A one-liner to tie them together: **"Recall, Target, Change."**
