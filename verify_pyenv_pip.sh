#!/usr/bin/env bash

export PIP_REQUIRE_VIRTUALENV=false

for VERSION in $(pyenv versions --bare --skip-aliases | grep -v '/usr/local/Cellar' | sed 's/\*//' | tr -s ' ' | cut -d ' ' -f 2); do
    echo $VERSION
    echo "Installing requirements for $VERSION"
    export PYENV_VERSION=$VERSION
    python --version
    pip install --upgrade --upgrade-strategy eager pip
    pip install --upgrade --upgrade-strategy eager --requirement ~/base_requirements.txt
    pyenv rehash
done
