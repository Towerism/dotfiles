Why are dotfile repositories important? See https://dotfiles.github.io/.

# dotfiles

![alt text](screenshots/elias-forest-theme.png "screenshot")

This repo currently has configs for the following:

- oni
- i3
- dunst
- kitty
- ncmpcpp
- polybar
- rofi
- wallpapers
- zsh

## Requirements

The following are assumed to be installed:

- acpi (required by polybar for battery indicator)
- [color-blend](https://www.github.com/towerism/color-blend) (used for calculating colors)
- feh (required for background)
- Font Awesome (required by polybar)
- unifont (required by polybar)
- Source Code Pro font (used by oni)
- i3wm
- pacman-contrib (required by polybar for update checking)
- prezto (for a pleasant zsh experience)
- pulseaudio
- polybar
- ponymix (used for pulseaudio volume control)
- pywal (used for tty colorscheme restoration)
- Roboto font (required by polybar)
- rofi (required by i3)
- sysstat (required by polybar for cpu usage)

## Optional

The following are optional:

- compton (optional for cool animations and transparency)
- Franz (for cloud services)
- GNU Stow (recommended if you want to run the auto-install script)
- kitty (preferred terminal)
- playerctl (control media playback)
- Spotify

## Usage

You may have to remove existing dotfiles if they are not already managed by GNU
stow. After cloning, running the install script will set up the symlinks for
you, as well as install the default theme:

``` bash
$ git clone https://github.com/towerism/dotfiles ~/.dotfiles
$ ~/.dotfiles/install
```

### Themes

This dotfile setup is designed to allow the user to change the theme on the fly.
Themes can be loaded randomly, or selectively, on the fly based on wallpapers
stored in .wallpapers folder. Use `Super+Shift+t` to load a random theme. Or use
the `~/.scripts/load-theme .wallpapers/<path>` to load a specific theme based
on the chosen wallpaper. Pywal is used to dynamically, and repeatably, create a
colorscheme based on the chosen wallpaper. The colorscheme will be applied to the
terminal, polybar, and dunst notifications.

## oni

Oni is a modern electron-based editor that combines neovim with the good parts of
editors like Atom and VSCode. The main reason we like oni is because of its support
of the Language Server Protocol. Combine this with the 
[vim-polyglot](https://www.github.com/sheerun/vim-polyglot), and you have a modern
text editor with an authentic vim-feel that is unparalleled by any other text editor.

## i3

This is a modified version of the default config. Window navigation was modified
to mirror vim bindings exactly, so horizontal splitting had to be remapped. I've
also configured certain programs to open to certain workspaces, i.e. emacs open
in the code workspaces, and chromium opens in the www workspace. The
configuration also automatically loads the theme that was most recently loaded.

## dunst

Dunst is used for notifications. It hasn't been configured much from default
other than wider notification window. The configuration is generated when
changing themes in order to reflect the whatever the current colorscheme is.

## kitty

The kitty default configuration is sufficient for now. The only thing changed is
the default font.

## ncmpcpp

The chosen media player frontend. The configuration uses vim navigation style.

## polybar

This config shows a pretty status bar at the top of the screen. It shows
battery, storage capacity used, volume, memory and cpu usage, wifi, power menu,
and workspaces that are pinned to the corresponding monitor.

## rofi

The preferred application launchered. It is configured to match whatever the
current colorscheme is.

## wallpapers

Contains lockscreen-only wallpapers that don't work with pywal as well as the
wallpapers that can be used with wal. The random-theme script pulls wallpapers
from the wallpapers that are not lockscreen-only.

## zsh

This provides good defaults through the prezto zsh configuration framework,
including fuzzy completion, and git integration. It also uses keychain for
managing ssh-agent across multiple terminals and Xsessions. It creates several
aliases to neovim and makes it the default editor.


