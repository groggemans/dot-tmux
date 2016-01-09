# dot-tmux

This is my tmux configuration.

Feel free to use it as a starting point for your own tmux configuration!

Small changes on the configuration can be made in the local config file.
- `~/.tmux.conf.local`

## Requirements
- tmux version 1.9 or higher

## Install
This tmux config is available as [Ellipsis][Ellipsis] package. It is highly
recommended to use Ellipsis for installation, although manual installation is
also supported.

#### Ellipsis
``` shell
    ellipsis install groggemans/dot-tmux
```

#### Manual
```shell
    git clone https://github.com/groggemans/dot-tmux.git ~/.tmux
    ln -s ~/.tmux/tmux.conf ~/.tmux.conf
```

**Attention:** When using manual installation, the plugins will be installed
automatically on the first start.  This will take a long time!

## Maintain
To keep everything up-to-date;

#### Ellipsis
```shell
    ellipsis pull tmux
```

#### Manual
You can keep the plugins up-to-date by running the update command, `prefix` +
`U`, on a regular basis.

## Plugins
- [tmux-plugins/tpm][tpm]
- [tmux-plugins/tmux-resurrect][tmux-resurrect]
- [tmux-plugins/tmux-online-status][tmux-online-status]
- [GROG/tmux-plugin-cpu][tmux-plugin-cpu]
- [GROG/tmux-plugin-mem][tmux-plugin-mem]
- [GROG/tmux-plugin-battery][tmux-plugin-battery]

## Key bindings

#### Prefix
- `Ctrl-a`

#### General
- `F5` -> Reload tmux configuration
- `F11` -> Toggle status bar
- `Alt-;` -> Command-prompt
- `Prefix` + `:` -> Command-prompt
- `Prefix` + `?` -> List of key mappings
- `Prefix` + `R` -> Reload tmux configuration
- `Prefix` + `s` -> Suspend client
- `Prefix` + `v` -> "Visual" mode (copy-mode)

#### Dynamic key bindings
Reload the configuration (`prefix` + `R`) to go back to the normal bindings.

- `Prefix` + `b` -> Load byobu function key bindings
- `Prefix` + `d` -> Load default key bindings
- `Prefix` + `f` -> Toggle function key bindings


#### Movement
The movement is *vim aware*, if you use the
[vim-tmux-navigator][vim-tmux-navigator] plugin
you can seamlessly transfer between vim splits and tmux panes whit the same
key bindings.

- `Ctrl-h` -> To left pane/split
- `Ctrl-j` -> To bottom pane/split
- `Ctrl-k` -> To top pane/split
- `Ctrl-l` -> To right pane/split

#### Session manipulation
- `Shift-F9` -> Select session
- `Shift-F10` -> Rename session
- `Ctrl-Shift-F2` -> New session

#### Window manipulation
- `Prefix` + `/` -> Search for window
- `Prefix` + `t` -> Open new window
- `Prefix` + `x` -> Close current window
- `F2` -> Open new window
- `F3` -> Go to previous window
- `F4` -> Go to next window
- `F9` -> Select session
- `F10` -> Rename window
- `Prefix` + `1` -> Go to window '1'
- `Prefix` + `2` -> Go to window '2'
- `Prefix` + `3` -> Go to window '3'
- `Prefix` + `4` -> Go to window '4'
- `Prefix` + `5` -> Go to window '5'
- `Prefix` + `6` -> Go to window '6'
- `Prefix` + `7` -> Go to window '7'
- `Prefix` + `8` -> Go to window '8'
- `Prefix` + `9` -> Go to window '9'

#### Pane manipulation
- `Ctrl-F2` -> New pane (vertical split)
- `Shift-F2` -> New pane (horizontal split)
- `Prefix` + `H` -> Resize pane to the left
- `Prefix` + `J` -> Resize pane to the bottom
- `Prefix` + `K` -> Resize pane to the top
- `Prefix` + `L` -> Resize pane to the right

#### Plugins
- `Prefix` + `I` -> Install new plugins
- `Prefix` + `U` -> Update installed plugins
- `Alt-u` -> Clean-up pluggins

## Author
By [G. Roggemans][groggemans]

## License
MIT

[Ellipsis]:             https://github.com/ellipsis/ellipsis

[tpm]:                  https://github.com/tmux-plugins/tpm
[tmux-resurrect]:       https://github.com/tmux-plugins/tmux-resurrect
[tmux-online-status]:   https://github.com/tmux-plugins/tmux-online-status
[tmux-plugin-cpu]:      https://github.com/GROG/tmux-plugin-cpu
[tmux-plugin-mem]:      https://github.com/GROG/tmux-plugin-mem
[tmux-plugin-battery]:  https://github.com/GROG/tmux-plugin-battery
[vim-tmux-navigator]:   https://github.com/christoomey/vim-tmux-navigator

[groggemans]:           https://github.com/groggemans
