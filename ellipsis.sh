##############################################################################
# @file ellipsis.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Minimal ellipsis version
ELLIPSIS_VERSION_DEP='1.9.0'

# Package dependencies (informational/not used!)
ELLIPSIS_PKG_DEPS='ellipsis/ellipsis-tpm'

##############################################################################

pkg.install() {
    # Install Ellipsis-TPM if not already installed
    ellipsis.list_packages | grep "$ELLIPSIS_PACKAGES/ellipsis-tpm" 2>&1 > /dev/null
    if [ $? -ne 0 ]; then
        ellipsis install ellipsis-tpm
    fi

    # Install plugins
    TPM_CONF="$PKG_PATH/tmux.conf" TPM_PLUGIN_PATH="$PKG_PATH/plugins"\
        ellipsis-tpm install
}

##############################################################################

pkg.link() {
    # Link tmux.conf
    fs.link_file tmux.conf

    # Link package into ~/.config/tmux
    mkdir -p "$ELLIPSIS_HOME/.config"
    fs.link_file "$PKG_PATH" "$ELLIPSIS_HOME/.config/tmux"
}

##############################################################################

 pkg.pull() {
    # Update dot-tmux repo
    git.pull

    # Clean and update plugins
    TPM_CONF="$PKG_PATH/tmux.conf" TPM_PLUGIN_PATH="$PKG_PATH/plugins"\
        ellipsis-tpm clean
    TPM_CONF="$PKG_PATH/tmux.conf" TPM_PLUGIN_PATH="$PKG_PATH/plugins"\
        ellipsis-tpm update
 }

##############################################################################

pkg.unlink() {
    # Remove config dir
    rm "$ELLIPSIS_HOME/.config/tmux"

    # Remove all links in the home folder
    hooks.unlink
}

##############################################################################

pkg.uninstall() {
    : # No action
}

##############################################################################
