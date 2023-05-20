function update-all
    # ask for sudo access
    sudo -v

    # fisher
    fisher update

    # homebrew
    brew update && brew upgrade

    # pipx
    pipx upgrade-all

    # tlmgr
    sudo tlmgr update --self --all

    # conda
    conda update --all
end