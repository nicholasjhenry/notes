
```
--all - Gather usage rules from all dependencies that have them
    (includes both main rules and all sub-rules)
--inline <specs> - Force specific packages to be inlined even when
    using --link-to-folder. Supports same specs as packages
```

Example: Inline all usage rules

```sh
mix usage_rules.sync ./AGENTS.md --all --inline usage_rules:all
```

Example: creates links in `AGENTS.md` to usage rules in `deps` folder (i.e. no copy)

```markdown
# AGENTS.md

<!-- phoenix:phoenix-start -->
## phoenix:phoenix usage
[phoenix:phoenix usage rules](deps/phoenix/usage-rules/phoenix.md)
<!-- phoenix:phoenix-end -->
```

```sh
mix usage_rules.sync AGENTS.md --all --link-to-folder deps
```

Example: creates links in `AGENTS.md` and copies usage rules files to `foobar`

```markdown
# AGENTS.md

<!-- phoenix:phoenix-start -->
## phoenix:phoenix usage
[phoenix:phoenix usage rules](foobar/phoenix_phoenix.md)
<!-- phoenix:phoenix-end -->
```

```sh
mix usage_rules.sync AGENTS.md --all --link-to-folder foobar
```