# Wayland migration TODO

## Colors
- [ ] Create ~/.config/sway/colors with $color0–$color15 from Monrovia theme

## Screenshot (maim → grim + slurp)
- [x] Rewrite dscreenshot-fullscreen
- [x] Rewrite dscreenshot-select-area
- [x] Rewrite dscreenshot-select-window

## Clipboard (xclip → wl-clipboard)
- [x] Rewrite dcopy
- [x] Rewrite dpaste

## Display management (autorandr → kanshi)
- [x] Write kanshi config mirroring randr-mexicali layouts
- [ ] Verify connector names match actual hardware (eDP-1, HDMI-A-2, DP-1)

## Notifications
- [ ] Verify dunst works on Wayland (it does via libnotify, but confirm)

## Screen color temperature (redshift → gammastep)
- [x] Write gammastep config
- [ ] Verify geoclue2 works
- [x] Add gammastep to sway autostart

## Wallpaper (nitrogen → swaybg/swww)
- [ ] Set wallpaper path in sway config (currently ~/.config/wallpaper)

## Lock screen
- [x] Configure swaylock

## Status bar
- [x] Write waybar config mirroring polybar layout
- [x] Write dwaybar launcher script
- [ ] Verify dpolybar-* scripts work under Wayland

## Key remapping (xcape → keyd)
- [x] Determine xcape usage: CapsLock→Ctrl (hold) / Esc (tap) + ralt→Compose
- [x] Write keyd config (.config/keyd/default.conf)
- [ ] Install keyd and enable keyd.service
- [ ] Verify CapsLock and ralt behavior

## Packages
- [ ] Add wayland stow to mexicali
- [ ] Add wm stow to mexicali
- [ ] Add Wayland packages to mexicali arch/packages
- [ ] Remove X11-only packages once stable

## Display manager
- [ ] Install greetd + tuigreet
- [ ] Configure greetd to offer both i3 and sway sessions
- [ ] Disable xdm-archlinux once stable on Wayland
