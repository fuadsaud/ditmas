# Wayland migration TODO

## Colors
- [ ] Create ~/.config/sway/colors with $color0–$color15 from Monrovia theme

## Screenshot (maim → grim + slurp)
- [ ] Rewrite dscreenshot-fullscreen
- [ ] Rewrite dscreenshot-select-area
- [ ] Rewrite dscreenshot-select-window

## Clipboard (xclip → wl-clipboard)
- [ ] Rewrite dcopy
- [ ] Rewrite dpaste

## Display management (autorandr → kanshi)
- [ ] Write kanshi config mirroring randr-mexicali layouts

## Notifications
- [ ] Verify dunst works on Wayland (it does via libnotify, but confirm)

## Screen color temperature (redshift → gammastep)
- [ ] Install gammastep
- [ ] Verify config format is compatible (it is)
- [ ] Add gammastep to sway autostart

## Wallpaper (nitrogen → swaybg/swww)
- [ ] Decide on swaybg (simple) vs swww (transitions)
- [ ] Set wallpaper path in sway config

## Lock screen
- [ ] Configure swaylock (colors, blur)

## Status bar
- [ ] Write waybar config mirroring polybar layout and scripts

## Key remapping (xcape → ?)
- [ ] Determine if xcape is in use and what it does
- [ ] Evaluate kanata as replacement if needed

## Packages
- [ ] Add wayland stow to mexicali
- [ ] Add wm stow to mexicali
- [ ] Add Wayland packages to mexicali arch/packages
- [ ] Remove X11-only packages once stable

## Display manager
- [ ] Install greetd + tuigreet
- [ ] Configure greetd to offer both i3 and sway sessions
- [ ] Disable xdm-archlinux once stable on Wayland
