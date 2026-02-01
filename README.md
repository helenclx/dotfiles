# Helen Chong's Dot Files

Configuration files for my Linux desktop home directory, managed with [yadm](https://yadm.io/).

These configurations are intended for [Arch Linux](https://archlinux.org/) with [KDE Plasma](https://kde.org/plasma-desktop/) as the desktop environment, since these are what I use on my personal computer daily.

In addition to the dot files of my yadm repository, I have a custom setup for [Neovim](https://neovim.io/), my main code editor, in a [separate Git repository](https://git.helenchong.dev/helenchong/LazyVim) that will be cloned into the home directory by my yadm bootstrap program.

## Instructions for Using This Repository

1. Install [yadm](https://yadm.io/).
2. Clone this repository with yadm into `$HOME`.
3. Run my yadm bootstrap program when prompted.
4. Reboot your system.

## Fonts

My configuration files in this repository also change system fonts and fonts used by certain software, so it is recommended to install the following fonts, then reboot your system for the font changes to take effect:

- [IBM Plex Sans Variable](https://github.com/IBM/plex)
- [Intel One Mono](https://www.intel.com/content/www/us/en/company-overview/one-monospace-font.html)
- [Maple Mono NF CN](https://font.subf.dev/en/)
- [Literata](https://github.com/googlefonts/literata)

## Theming

I use [Catppuccin](https://catppuccin.com/) as the default colour scheme of most programs I use, so my dotfiles also include styling various programs with Catppuccin. My favourite Catppuccin flavour is Mocha, while my favourite accent is Mauve.

For my KDE Plasma desktop environment, I use [Catppuccin](https://github.com/catppuccin/kde) as the global theme, which will be installed by my yadm bootstrap program. However, for window decorations, I use [Klassy](https://github.com/paulmcauley/klassy), with my own configuration that is also included in this repository. My yadm bootstrap program will also download and install Klassy.

## Software and Tools Used

Below only lists software that uses the configuration files in this repository. For a more comprehensive list of the hardware and software I use, check out [my /uses page](https://helenchong.dev/uses/).

My yadm bootstrap program will install these software and dependencies after cloning my yadm repository. [yay](https://github.com/Jguer/yay) is my Arch User Repository (AUR) helper of choice, so my yadm bootstrap program will compile yay to install AUR packages.

- [Bash](https://www.gnu.org/software/bash/)
- [bat](https://github.com/sharkdp/bat)
- [Easy Effects](https://github.com/wwmm/easyeffects)
	- [Linux Studio Plugins](https://lsp-plug.in/) (`lsp-plugins-lv2` in Arch Linux's repository)
	- [Calf Studio Gear](http://calf-studio-gear.org/) (`calf` in Arch Linux's repository)
- [Elisa](https://apps.kde.org/elisa/)
- [ElecWhat](https://github.com/piec/elecwhat) (install `elecwhat-bin` from AUR)
- [eza](https://github.com/eza-community/eza)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [Fcitx 5](https://fcitx-im.org/)
	- [fcitx5-chinese-addons](https://github.com/fcitx/fcitx5-chinese-addons)
	- [fcitx5-configtool](https://github.com/fcitx/fcitx5-configtool)
	- [fcitx5-qt](https://github.com/fcitx/fcitx5-qt) and [fcitx5-gtk](https://github.com/fcitx/fcitx5-gtk) — required to make Fcitx 5 work across various apps
	- [Noto CJK fonts](https://github.com/notofonts/noto-cjk) (`noto-fonts-cjk` in Arch Linux's repository) — required for displaying Chinese characters
- [Fish shell](https://fishshell.com/)
	- NOTE: My yadm bootstrap program will change the login shell to fish. 
- [Foliate](https://johnfactotum.github.io/foliate/)
- [FreeTube](https://freetubeapp.io/)
- [fzf](https://github.com/junegunn/fzf)
- [Ghostwriter](https://ghostwriter.kde.org/)
- [Git](https://git-scm.com/)
- [glow](https://github.com/charmbracelet/glow)
- [gpu-screen-recorder](https://git.dec05eba.com/gpu-screen-recorder/about/) (install `gpu-screen-recorder` and `gpu-screen-recorder-ui` from AUR)
- [Halloy](https://halloy.chat/)
- [hyfetch](https://github.com/hykilpikonna/hyfetch)
- [Karousel](https://github.com/peterfajdiga/karousel)
- [Kate](https://kate-editor.org/)
- [KCharSelect](https://apps.kde.org/kcharselect/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [Konsole](https://konsole.kde.org/)
- [KWrite](https://apps.kde.org/kwrite/)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [mpv](https://mpv.io/)
	- [mpv-mpris](https://github.com/hoyon/mpv-mpris)
- [Neovim](https://neovim.io/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [Starship](https://starship.rs/)
- [Superfile](https://superfile.dev/)
- [tealdeer](https://github.com/tealdeer-rs/tealdeer)
- [Tokodon](https://apps.kde.org/en-gb/tokodon/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [Vim](https://www.vim.org/)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) (installed with [pipx](https://github.com/pypa/pipx))
	- NOTE: My bootstrap program will also install [Deno](https://deno.com/), which is required by yt-dlp to [solve YouTube's JavaScript challenges](https://github.com/yt-dlp/yt-dlp/wiki/EJS).
- [yt-x](https://github.com/Benexl/yt-x)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)

## Extras

This repository also includes a [`Scripts`](./Scripts) directory, which stores my shell scripts for system-wide utilities. I have configured Bash and fish shell to add my `Scripts` directory to the `$PATH` environment variable.

## Credits

- [Catppuccin](https://catppuccin.com/) colour scheme
- Easy Effects presets:
	- [Digitalone1's output presets](https://github.com/Digitalone1/EasyEffects-Presets)
	- jtrv's [microphone preset: noise reduction + NPR masculine voice](https://gist.github.com/jtrv/47542c8be6345951802eebcf9dc7da31)
- mpv scripts:
	- [mpv_sponsorblock_minimal](https://codeberg.org/jouni/mpv_sponsorblock_minimal) by jouni
	- [uosc](https://github.com/tomasklaen/uosc) by Tomas Klaen
	- [thumbfast](https://github.com/po5/thumbfast) by po5
- [a11y-dark colour scheme for Vim](https://github.com/ericwbailey/a11y-syntax-highlighting/blob/main/dist/vim/a11y-dark.vim) by Reuben L. Lillie
