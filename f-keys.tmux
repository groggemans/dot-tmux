##############################################################################
# @file f-keys.tmux
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# Disable function key bindings
bind f source "$HOME/.config/tmux/f-keys.tmux.disable"

##############################################################################

# F2 window/pane creation
bind -n F2 new-window
bind -n C-F2 display-panes \; split-window -h -c "#{pane_current_path}"
bind -n S-F2 display-panes \; split-window -v -c "#{pane_current_path}"
bind -n C-S-F2 new-session

# F3/4 window navigation
bind -n F3 previous-window
bind -n F4 next-window

# F5 refresh
bind -n F5 source "$HOME/.tmux.conf"

# F9 session selection
bind -n F9 choose-window
bind -n S-F9 choose-session

# F10 renaming
bind -n F10 command-prompt -p "(rename-window) " "rename-window '%%'"
bind -n S-F10 command-prompt -p "(rename-session) " "rename-session '%%'"

# F11 "full-screen" (togle status bar)
bind -n S-F11 set-option -g status

##############################################################################
# vim: ft=tmux
