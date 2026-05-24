# Wayland TODO

## Status bar
- [ ] Module colors don't match polybar — revisit color assignments per module
- [ ] Check Siji codepoints around U+E218–E21D on mexicali to find wifi signal strength variants (`for cp in e218 e219 e21a e21b e21c e21d; do printf "U+$cp: \U$cp\n"; done`)

## Menus
- [ ] Better looks for rofi
- [ ] Expore walker

## Display management
- [ ] Verify kanshi connector names match actual hardware (eDP-1, HDMI-A-2, DP-1)

## Packages
- [ ] Remove X11-only packages once stable

## Setup / systemd cleanup
- [ ] Remove `setup_redshift` from arch-post-install (replaced by gammastep, no service needed)
- [ ] Drop stow/redshift (X11-only, obsolete)
- [ ] Replace stow/clipster with a Wayland clipboard history solution (cliphist + wl-clipboard)
- [ ] Audit stow/systemd: autostart.target has no Wayland consumers; geoclue-agent only needed if gammastep uses geoclue

## Explore
- [ ] Explore Hyprland as a sway replacement
- [ ] Explore managing user-land daemons via systemd user services + presets instead of sway exec
-
-

nvim plugin errors
1password startup (ssh agent)
dark mode
