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
    # Install EllipsisTPM
    ellipsis install https://github.com/groggemans/ellipsis-tpm

    # Install plugins
    ellipsis-tpm install
}

##############################################################################

 pkg.pull() {
    # Update dot-tmux repo
    git.pull

    # Clean and update plugins
    ellipsis-tpm clean
    ellipsis-tpm upate
 }

##############################################################################
