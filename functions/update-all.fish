function update-all
    # ask for sudo access
    sudo -v

    # fisher
    _start_update_prompt "fisher"
    fisher update

    # homebrew
    _start_update_prompt "homebrew"
    brew update && brew upgrade

    # pipx
    _start_update_prompt "pipx"
    pipx upgrade-all

    # tlmgr
    _start_update_prompt "tlmgr"
    sudo tlmgr update --self --all

    # conda
    _start_update_prompt "conda"
    conda update --all
end

function _start_update_prompt --argument-names name
    echo "\\n"
    echo "-------------------"
    echo "-Updating $name-"
    echo "-------------------"
end