# Wayland migration TODO

## Colors
- [x] Create ~/.config/sway/colors with $color0–$color15 from Monrovia theme

## Screenshot (maim → grim + slurp)
- [x] Rewrite dscreenshot-fullscreen (smart X11/Wayland)
- [x] Rewrite dscreenshot-select-area (smart X11/Wayland)
- [x] Rewrite dscreenshot-select-window (smart X11/Wayland)

## Clipboard (xclip → wl-clipboard)
- [x] Rewrite dcopy (smart X11/Wayland)
- [x] Rewrite dpaste (smart X11/Wayland)

## Display management (autorandr → kanshi)
- [x] Write kanshi config mirroring randr-mexicali layouts
- [ ] Verify connector names match actual hardware (eDP-1, HDMI-A-2, DP-1)

## Notifications
- [ ] Verify dunst works on Wayland (it does via libnotify, but confirm)

## Screen color temperature (redshift → gammastep)
- [x] Write gammastep config
- [ ] Verify geoclue2 works
- [x] Add gammastep to sway autostart

## Wallpaper (nitrogen → swaybg)
- [x] Set wallpaper path in sway config (~/.config/wallpaper)
- [ ] Set actual wallpaper file at ~/.config/wallpaper on mexicali

## Lock screen
- [x] Configure swaylock

## Status bar
- [x] Write waybar config mirroring polybar layout
- [x] Write dwaybar launcher script
- [ ] Verify dpolybar-* scripts work under Wayland (or drop them)

## Key remapping (xcape → keyd)
- [x] Write keyd config (.config/keyd/default.conf)
- [ ] Enable keyd.service on mexicali
- [ ] Verify CapsLock and ralt behavior

## Packages
- [x] Add wayland stow to mexicali
- [x] Add wm stow to mexicali
- [x] Add Wayland packages to mexicali arch/packages
- [ ] Remove X11-only packages once stable

## Display manager
- [x] Switch to ly (single package, TUI)
- [x] dly-install script handles enable/disable switchover
- [ ] Run dly-install on mexicali when ready to switch

## On mexicali — next steps
- [ ] Pull wayland branch
- [ ] dup && dpacsync
- [ ] dly-install
- [ ] Enable keyd.service
- [ ] Set ~/.config/wallpaper
- [ ] Reboot into sway
