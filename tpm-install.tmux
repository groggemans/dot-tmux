##############################################################################
#
# @file tpm-install.tmux
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

# Get the plugin manager
run-shell 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm'

# Run plugin manager
run-shell '~/.tmux/plugins/tpm/tpm'

# Install plugins
run-shell '~/.tmux/plugins/tpm/scripts/install_plugins.sh >/dev/null 2>&1'

##############################################################################