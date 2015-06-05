##############################################################################
#
# @file default.tmux
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

# Remove all key bindings
unbind-key -a

# Use ctrl-a as prefic
set -g prefix C-a

# Bind key to load custom config again
bind R source ~/.tmux.conf

##############################################################################
# Default bindings

bind-key C-a send-prefix
bind-key C-o rotate-window
bind-key C-z suspend-client
bind-key Space next-layout
bind-key ! break-pane
bind-key '"' split-window
bind-key '#' list-buffers
bind-key '$' command-prompt -I "#S" "rename-session '%%'"
bind-key % split-window -h
bind-key & confirm-before -p "kill-window #W? (y/n)" kill-window
bind-key "'" command-prompt -p index "select-window -t ':%%'"
bind-key ( switch-client -p
bind-key ) switch-client -n
bind-key , command-prompt -I "#W" "rename-window '%%'"
bind-key - delete-buffer
bind-key . command-prompt "move-window -t '%%'"
bind-key 0 select-window -t :0
bind-key 1 select-window -t :1
bind-key 2 select-window -t :2
bind-key 3 select-window -t :3
bind-key 4 select-window -t :4
bind-key 5 select-window -t :5
bind-key 6 select-window -t :6
bind-key 7 select-window -t :7
bind-key 8 select-window -t :8
bind-key 9 select-window -t :9
bind-key : command-prompt
bind-key \; last-pane
bind-key = choose-buffer
bind-key ? list-keys
bind-key D choose-client
bind-key L switch-client -l
bind-key [ copy-mode
bind-key ] paste-buffer
bind-key c new-window
bind-key d detach-client
bind-key f command-prompt "find-window '%%'"
bind-key i display-message
bind-key l last-window
bind-key n next-window
bind-key o select-pane -t :.+
bind-key p previous-window
bind-key q display-panes
bind-key r refresh-client
bind-key s choose-tree
bind-key t clock-mode
bind-key w choose-window
bind-key x confirm-before -p "kill-pane #P? (y/n)" kill-pane
bind-key z resize-pane -Z
bind-key { swap-pane -U
bind-key } swap-pane -D
bind-key '~' show-messages
bind-key PPage copy-mode -u
bind-key -r Up select-pane -U
bind-key -r Down select-pane -D
bind-key -r Left select-pane -L
bind-key -r Right select-pane -R
bind-key M-1 select-layout even-horizontal
bind-key M-2 select-layout even-vertical
bind-key M-3 select-layout main-horizontal
bind-key M-4 select-layout main-vertical
bind-key M-5 select-layout tiled
bind-key M-n next-window -a
bind-key M-o rotate-window -D
bind-key M-p previous-window -a
bind-key -r M-Up resize-pane -U 5
bind-key -r M-Down resize-pane -D 5
bind-key -r M-Left resize-pane -L 5
bind-key -r M-Right resize-pane -R 5
bind-key -r C-Up resize-pane -U
bind-key -r C-Down resize-pane -D
bind-key -r C-Left resize-pane -L
bind-key -r C-Right resize-pane -R

##############################################################################
