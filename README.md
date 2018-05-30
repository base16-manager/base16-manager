# Base16 Manager
`base16-manager` is a command line tool to install base16 templates and set themes globally. This helps a lot if you have multiple base16 templates installed and you like to shift themes every now and then.

All PRs welcome!

## Dependencies
* bash
* git

## Installation
### Arch Linux
Install from the [AUR](https://aur.archlinux.org/packages/base16-manager-git).
```sh
$ yaourt -S base16-manager-git
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

### macOS
Install using [Homebrew](https://brew.sh/).
```sh
$ brew tap chrokh/tap
$ brew install base16-manager
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
    set-random                          Sets to a random installed theme
    install      'username/repository'  Installs a new template
    uninstall    'username/repository'  Uninstalls a template
    list                                Lists installed templates
    list-themes                         Lists installed themes
    update                              Updates installed templates
    clean                               Cleans up leftovers
    self-update                         Updates this script
```

## Currently supported templates
* [0xdec/base16-rofi](https://github.com/0xdec/base16-rofi)
* [chriskempson/base16-shell](https://github.com/chriskempson/base16-shell)
* [chriskempson/base16-vim](https://github.com/chriskempson/base16-vim)
* [chriskempson/base16-xresources](https://github.com/chriskempson/base16-xresources)
* [khamer/base16-dunst](https://github.com/khamer/base16-dunst)
* [khamer/base16-termite](https://github.com/khamer/base16-termite)
* [nicodebo/base16-fzf](https://github.com/nicodebo/base16-fzf)
* [theova/base16-qutebrowser](https://github.com/theova/base16-qutebrowser)
