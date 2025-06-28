# Make Fcitx 5 work consistently across apps
# on KDE Plasma Wayland
# See: https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland#KDE_Plasma
unset GTK_IM_MODULE
unset QT_IM_MODULE
unset SDL_IM_MODULE
export XMODIFIERS=@im=fcitx
