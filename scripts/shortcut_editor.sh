#!/bin/sh 

function _config() {
    config_path=$1/$2
    if [ -d "$config_path" ]; then
        nvim "$config_path"
    else
        
        echo "Configuration folder does not exists: Check if '$config_path' is valid"
    fi
}


alias config='_config ~/.config'
alias dev='_config ~/dev' 
