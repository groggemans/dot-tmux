##############################################################################
#
# @file f-keys.tmux
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
#
#   This script is free software: you can redistribute it and/or modify it
#   under the terms of the GNU Lesser General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or (at your
#   option) any later version.
#
#   This script is distributed in the hope that it will be useful, but
#   WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
#   or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
#   License for more details.
#
#   You should have received a copy of the GNU Lesser General Public License
#   along with this script. If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

# Disable function key bindings
bind f source ~/.tmux/f-keys.tmux.disable

##############################################################################

# F2 window/pane creation
bind -n F2 new-window
bind -n C-F2 display-panes \; split-window -h
bind -n S-F2 display-panes \; split-window -v
bind -n C-S-F2 new-session

# F3 window navigation
bind-key -n F3 previous-window
bind-key -n F4 next-window


##############################################################################
