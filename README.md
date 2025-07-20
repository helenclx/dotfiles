# Helen Chong's Dot Files

Configuration files for my Linux home directory, managed with [yadm](https://yadm.io/).

These configurations are primarily intended for [KDE Plasma](https://kde.org/plasma-desktop/) as the desktop environment. My personal computer's Linux distribution is [Arch Linux](https://archlinux.org/), but since I also use [Debian](https://www.debian.org/) on my remote servers, and have used [Fedora Linux](https://www.fedoraproject.org/), the setup of this repository supports these distros.

## Instructions for Using This Repository

1. Install [yadm](https://yadm.io/).
1. Clone this repository with yadm into `$HOME`.
1. Install my yadm bootstrap program when prompted.
1. Reboot the system.

## List of Software that Uses These Configuration Files

Software marked with * will be installed by the bootstrap script of this yadm repository, otherwise the system will throw error or warning messages due to the absence of these software.

- [Easy Effects](https://github.com/wwmm/easyeffects)
- [Fcitx 5](https://fcitx-im.org/)
    - A package for configurating Fcitx 5, such as `kcm-fcitx5`, `kde-config-fcitx5` or `fcitx5-configtool`
    - [fcitx5-chinese-add-ons](https://github.com/fcitx/fcitx5-chinese-addons)
	- A Chinese font such as `noto-fonts-cjk` is required to display Chinese characters
    - It is strongly recommended to install the `fcitx5-qt` and `fcitx5-gtk` packages to ensure Fcitx 5 works consistently across apps
- [FreeTube](https://freetubeapp.io/)
- [Ghostwriter](https://ghostwriter.kde.org/)
- [gpu-screen-recorder](https://git.dec05eba.com/gpu-screen-recorder/about/)
- [Kate](https://kate-editor.org/)
- [KCharSelect](https://apps.kde.org/kcharselect/)
- [Konsole](https://konsole.kde.org/)
- [KWrite](https://apps.kde.org/kwrite/)
- [Neovim](https://neovim.io/)*
- [Vim](https://www.vim.org/)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)*
- [Zsh](https://www.zsh.org/)*

## Additional Setup

In addition to these dot files, I have a custom setup for [Neovim](https://neovim.io/), my main editor. See [my LazyVim repository](https://git.helenchong.dev/helenchong/LazyVim) for more information.

## See Also

- [My /uses page](https://helenchong.dev/uses/) — A list of hardware and software I use.
