# Wayland TODO

## Looks
- [ ] Better looks for rofi
- [ ] Explore walker
- [ ] Module colors don't match polybar — revisit color assignments per module
- [ ] Check Siji codepoints around U+E218–E21D on mexicali to find wifi signal strength variants (`for cp in e218 e219 e21a e21b e21c e21d; do printf "U+$cp: \U$cp\n"; done`)
- [ ] Dark mode

## Displays
- [ ] Verify kanshi connector names match actual hardware (eDP-1, HDMI-A-2, DP-1)

## Explore
- [ ] Investigate nwg-shell (https://nwg-piotr.github.io/nwg-shell/) — sway companion toolkit (panel, launcher, displays, look, etc.)

## Window management
- [ ] Explore Hyprland as a sway replacement

## System management
- [ ] Explore managing user-land daemons via systemd user services + presets instead of sway exec
- [ ] Get rid of gdm/gnome shell

## Hardware
- [ ] Keyboard backlight controls not working
