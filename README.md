# base16-manager

[![Build Status](https://travis-ci.org/AuditeMarlow/base16-manager.svg?branch=master)](https://travis-ci.org/AuditeMarlow/base16-manager)

`base16-manager` is a command line tool to install base16 templates and set
themes globally. This helps a lot if you have multiple base16 templates
installed and you like to shift themes every now and then.


## Installation

### Linux
Clone this repository and run:
```sh
$ sudo make install
```

#### Arch Linux
If you are using Arch Linux, you can install `base16-manager` from the
[AUR](https://aur.archlinux.org/packages/base16-manager).
```sh
$ aurman -S base16-manager
```

### MacOS
Install using [Homebrew](https://brew.sh/).
```sh
$ brew tap chrokh/tap
$ brew install base16-manager
```

### Windows
No Windows support at this time.


## Usage

```
Usage: base16-manager [option]
Options:
 set              'base16-theme'         Sets the theme
 set-random                              Sets to a random installed theme
 install          'username/repository'  Installs a new template
 uninstall        'username/repository'  Uninstalls a template
 list                                    Lists installed templates
 list-support                            Lists supported templates
 list-installable                        Lists installable templates
 list-themes                             Lists installed themes
 update                                  Updates installed templates
 clean                                   Cleans up leftovers
```


## Examples
```
// What templates are supported?
$ base16-manager list-support

// Install a bunch of templates.
$ base16-manager install chriskempson/base16-shell
$ base16-manager install chriskempson/base16-vim
$ base16-manager install 0xdec/base16-rofi

// What themes are installed now I have templates?
$ base16-manager list-themes

// Set a theme for all installed templates.
$ base16-manager set materia
```

## Notes
* If you want to use themes with `i3wm` you should
  [read this](https://www.reddit.com/r/unixporn/comments/4if9xc/i3_you_can_now_use_x_resources_in_i3/)
  and familiarize yourself with Xresources a tad.
* If you are using
  [`chriskempson/base16-shell`](https://github.com/chriskempson/base16-shell),
  you'll want to go through the configuration described there, and replace
  `$HOME/.config/base16-shell/` with
  `$HOME/.base16-manager/chriskempson/base16-shell/`.
* If you are using `chriskempson/base16-vim` with Vim, you should add
  `source ~/.vim/colorscheme.vim` to your `.vimrc`. If you are using NeoVim
  instead, you should add `source ~/.config/nvim/colorscheme.vim` instead.

## Contributing
See `CONTRIBUTING.md` for more information.
