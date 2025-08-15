# Helen Chong's Dot Files

Configuration files for my Linux home directory, managed with [yadm](https://yadm.io/).

These configurations are intended for [Arch Linux](https://archlinux.org/) with [KkDE Plasma](https://kde.org/plasma-desktop/) as the desktop environment, since these are what I use on my personal computer daily.

In addition to the dot files of my yadm repository, I have a custom setup for [Neovim](https://neovim.io/), my main editor, in a [separate repository](https://git.helenchong.dev/helenchong/LazyVim) that will be cloned into the home directory by my yadm bootstrap program.

## Instructions for Using This Repository

1. Install [yadm](https://yadm.io/).
2. Clone this repository with yadm into `$HOME`.
3. Install my yadm bootstrap program when prompted.
4. Reboot your system.

## Fonts

My configuration files in this repository also change the fonts used by some software, so it is recommended to install the following fonts, then reboot your system for the font changes to take effect:

- [Intel One Mono](https://www.intel.com/content/www/us/en/company-overview/one-monospace-font.html)
- [IntoneMono Nerd Font](https://www.nerdfonts.com/font-downloads)
- [Readex Pro](https://fonts.google.com/specimen/Readex+Pro)
- [Literata](https://fonts.google.com/specimen/Literata)

## Software and Tools Used

Below only lists software and tools that uses the configuration files in this repository. For a more comprehensive list of the hardware and software I use, check out [my /uses page](https://helenchong.dev/uses/).

Software marked with * will be installed by my yadm bootstrap program after cloning my yadm repository, otherwise the system may throw error or warning messages due to the absence of these software.

- [bat](https://github.com/sharkdp/bat)
- [Easy Effects](https://github.com/wwmm/easyeffects)
    - Additional dependencies:
        - [Linux Studio Plugins](https://lsp-plug.in/) (`lsp-plugins-lv2` in Arch Linux's repository)
        - [Calf Studio Gear](http://calf-studio-gear.org/) (`calf` in Arch Linux's repository)
- [Fcitx 5](https://fcitx-im.org/)
    - Additional dependencies:
        - [fcitx5-chinese-add-ons](https://github.com/fcitx/fcitx5-chinese-addons)
        - A package for configurating Fcitx 5, such as `kcm-fcitx5`, `kde-config-fcitx5` or `fcitx5-configtool`
        - A Chinese font such as `noto-fonts-cjk` is required to display Chinese characters
        - It is strongly recommended to install `fcitx5-qt` and `fcitx5-gtk` to ensure Fcitx 5 works consistently across apps
- [Fish shell](https://fishshell.com/)*
- [Foliate](https://johnfactotum.github.io/foliate/)
- [FreeTube](https://freetubeapp.io/)
- [Ghostwriter](https://ghostwriter.kde.org/)
- [Git](https://git-scm.com/)
- [gpu-screen-recorder](https://git.dec05eba.com/gpu-screen-recorder/about/)
- [Kate](https://kate-editor.org/)
- [KCharSelect](https://apps.kde.org/kcharselect/)
- [Konsole](https://konsole.kde.org/)
- [KWrite](https://apps.kde.org/kwrite/)
- [mpv](https://mpv.io/)
- [Neovim](https://neovim.io/)*
- [Starship](https://starship.rs/)*
- [Vim](https://www.vim.org/)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)*

## Credits

- Colour schemes:
    - [Catppuccin](https://catppuccin.com/)
    - [Dracula](https://draculatheme.com/)
- Easy Effects presets:
    - [Digitalone1's output presets](https://github.com/Digitalone1/EasyEffects-Presets)
    - jtrv's [microphone preset: noise reduction + NPR masculine voice](https://gist.github.com/jtrv/47542c8be6345951802eebcf9dc7da31)
- [mpv_sponsorblock_minimal](https://codeberg.org/jouni/mpv_sponsorblock_minimal) by jouni
- [a11y-syntax-highlighting dark theme for Vim](https://github.com/ericwbailey/a11y-syntax-highlighting/blob/main/dist/vim/a11y-dark.vim) by Reuben L. Lillie
