#!/usr/bin/env bash
##############################################################################
# @file ellipsis.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

pkg.install() {
    # Install Ellipsis-TPM if not already installed
    if ! utils.cmd_exists ellipsis-tpm; then
        ellipsis install ellipsis-tpm
    fi

    # Install plugins
    ellipsis-tpm install
}

##############################################################################
pkg.link() {
    # Link tmux.conf
    fs.link_file tmux.conf

    # Link package into ~/.tmux
    fs.link_file "$PKG_PATH"
}

##############################################################################

 pkg.pull() {
    # Update dot-tmux repo
    git.pull

    # Clean and update plugins
    ellipsis-tpm clean
    ellipsis-tpm update
 }

##############################################################################
