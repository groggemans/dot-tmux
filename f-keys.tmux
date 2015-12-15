##############################################################################
# @file f-keys.tmux
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# Disable function key bindings
bind f source ~/.tmux/f-keys.tmux.disable

##############################################################################

# F2 window/pane creation
bind -n F2 new-window
bind -n C-F2 display-panes \; split-window -h
bind -n S-F2 display-panes \; split-window -v
bind -n C-S-F2 new-session

# F3/4 window navigation
bind -n F3 previous-window
bind -n F4 next-window

# F5 refresh
bind -n F5 source ~/.tmux.conf

##############################################################################
