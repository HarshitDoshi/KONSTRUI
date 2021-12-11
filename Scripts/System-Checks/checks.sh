#!/usr/bin/env zsh

echo "\n"
echo "      :: Tools Availability Checks ::     "
echo "\n"

function check ()
{
    echo -n "[CHECK] [$1]   :   "
    if [ "$($1 --version)" ]
    then
        echo "AVAILABLE ($(echo $($1 --version)))"
    else
        echo "NOT AVAILABLE"
    fi
    return $?
}

check pyenv
check nvm
check brew
check docker
