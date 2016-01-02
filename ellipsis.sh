#!/usr/bin/env bash
##############################################################################
# @file ellipsis.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

pkg.link() {
    # Link tmux.conf
    fs.link_file tmux.conf

    # Link package into ~/.tmux
    fs.link_file $PKG_PATH
}

##############################################################################

pkg.install() {
    # Install TPM
    mkdir -p ~/.tmux/plugins
    cd ~/.tmux/plugins
    git.clone https://github.com/tmux-plugins/tpm
    exec ~/.tmux/plugins/tpm/tpm
    exec ~/.tmux/plugins/tpm/scripts/install_plugins.sh
}

##############################################################################

 pkg.pull() {
    # Update dot-tmux repo
    git.pull

    # Update plugins
    exec ~/.tmux/plugins/tpm/tpm
    exec ~/.tmux/plugins/tpm/scripts/clean_plugins.sh
    exec ~/.tmux/plugins/tpm/scripts/install_plugins.sh
    exec ~/.tmux/plugins/tpm/scripts/update_plugin.sh
 }

##############################################################################
