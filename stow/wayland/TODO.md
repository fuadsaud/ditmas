# Wayland TODO

## Status bar
- [ ] Module colors don't match polybar — revisit color assignments per module

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
