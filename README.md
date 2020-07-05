# pyenv-tools

Upgrade and requirements tools for pyenv

## setup

Copy base_requirements.txt into your home directory

```bash
cp base_requirements.txt ~/
```

## usage

Edit your `~/.base_requirements.txt` file to include modules you want installed for every version of python you install with `pyenv`.

To upgrade or install pyenv on a mac, run 

```bash
upgrade_pyenv.sh
```

To add a new module to the `~/base_requirements.txt` file, simply add it to the file then run

```bash
verify_pyenv_pip.sh
```
