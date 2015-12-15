##############################################################################
# @file tpm-install.tmux
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# Get the plugin manager
run-shell 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm'

# Run plugin manager
run-shell '~/.tmux/plugins/tpm/tpm'

# Install plugins
run-shell '~/.tmux/plugins/tpm/scripts/install_plugins.sh >/dev/null 2>&1'

##############################################################################
