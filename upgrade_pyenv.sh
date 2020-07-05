#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

VERSIONS=$(pyenv versions | sed 's/\*//' | tr -s ' ' | cut -d ' ' -f 2)
GLOBAL_VERSION=$(pyenv global)

set -x

export PYENV_VERSION='system'
brew update
brew install pyenv
brew upgrade pyenv

for VERSION in $VERSIONS; do
    pyenv install --skip-existing $VERSION
done

pyenv global $GLOBAL_VERSION

$DIR/verify_pyenv_pip.sh
