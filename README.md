# Base16 Manager
`base16-manager` is a command line tool to install base16 templates and set themes globally. This helps a lot if you have multiple base16 templates installed and you like to shift themes every now and then.

All PRs welcome!

## Dependencies
* bash
* git

### For Mac users
If you are a Mac user you need to install [Homebrew](https://brew.sh/index_se.html) and then install the appropriate GNU utils as below.
```sh
$ brew install coreutils
$ brew install findutils
```

## Installation
### Arch Linux
```sh
$ yaourt -S base16-manager
```

### Other Linux distros
Download the Git repo and run:
```sh
# make install
```

To remove, simply run:
```sh
# make clean
```

## Setup
### Installing templates
Before you can set a new theme, you have to install at least 1 template ([found here](https://github.com/chriskempson/base16)).
```sh
$ base16-manager install chriskempson/base16-shell
```

### Setting a theme
Once you've setup the templates you'd like to use, you're ready to set a theme.
```sh
$ base16-manager set materia
```

## Usage
```sh
Usage: base16-manager [option]
Options:
    set          'base16-theme'         Sets the theme
    install      'username/repository'  Installs a new template
    uninstall    'username/repository'  Uninstalls a template
    list                                Lists installed templates
    list-themes                         Lists installed themes
    update                              Updates installed templates
    clean                               Cleans up leftovers
    self-update                         Updates this script
```
