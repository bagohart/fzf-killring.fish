# fzf-killring.fish
A fish shell plugin to use fzf to insert items from the killring into the current command line

## Usage
Fish uses an [Emacs-style kill ring](https://fishshell.com/docs/current/interactive.html#killring) with (by default) `ctrl+y` and `alt+y`.
It's very simple to use if it has only a few short, non-overlapping entries – otherwise it can get a bit unwieldy, though.

For those cases, this plugin is useful.
Use your favoured binding to invoke fzf in multi-mode and choose one or more entries from the killring, which will be inserted at the current cursor position in the selected order, and separated by whitespace.

## Requirements
Needs fzf and fish `v.3.3` or newer because it uses [the new `$fish_killring` variable](https://fishshell.com/docs/current/language.html?highlight=killring#envvar-fish_killring).

## Installation
### Using fisher:
```
fisher install bagohart/fzf-killring.fish
```

### Manually:
Copy the file `_fzf_select_from_killring.fish` into `$XDG_CONFIG_HOME/fish/functions/` (probably `~/.config/fish/functions`).

### Add a binding:
No bindings are added by installing the plugin, so add a suitable binding to your `config.fish`. I use `ctrl+alt+k`:
```
bind \e\ck _fzf_select_from_killring
```

Use `fish_key_reader` and press a key to find out the corresponding code.\
Use `bind <code>` to discover if it's already bound to something else.\

For more information, read the [docs](https://fishshell.com/docs/current/cmds/bind.html).

## Using it together with [fzf.fish](https://github.com/PatrickF1/fzf.fish)
`fzf.fish` is a great plugin.
Its author [isn't interested in adding this feature to it](https://github.com/PatrickF1/fzf.fish/discussions/248#discussioncomment-3122632) though, so I decided to publish this as a standalone plugin.\
There should be no problem in using both plugins. If there ever is a conflict, please file a bug report!
