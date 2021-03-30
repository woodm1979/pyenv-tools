#!/usr/bin/env bash

export PIP_REQUIRE_VIRTUALENV=false

for VERSION in $(pyenv versions --bare | grep -v '/usr/local/Cellar' | sed 's/\*//' | tr -s ' ' | cut -d ' ' -f 2); do
    echo $VERSION
    echo "purging pip cache for $VERSION"
    export PYENV_VERSION=$VERSION
    python --version
    pip --version 
    pyenv which pip
    pip install --upgrade pip
    pip cache purge
done
