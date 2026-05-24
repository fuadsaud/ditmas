# Wayland TODO

## Looks
- [ ] Better looks for rofi
- [ ] Explore walker
- [ ] Module colors don't match polybar — revisit color assignments per module
- [ ] Check Siji codepoints around U+E218–E21D on mexicali to find wifi signal strength variants (`for cp in e218 e219 e21a e21b e21c e21d; do printf "U+$cp: \U$cp\n"; done`)
- [ ] Dark mode

## Displays
- [ ] Verify kanshi connector names match actual hardware (eDP-1, HDMI-A-2, DP-1)

## Window management
- [ ] Explore Hyprland as a sway replacement
- [ ] Investigate nwg-shell (https://nwg-piotr.github.io/nwg-shell/) — sway companion toolkit (panel, launcher, displays, look, etc.)

## System management
- [ ] Explore managing user-land daemons via systemd user services + presets instead of sway exec
- [ ] Get rid of gdm/gnome shell
- [ ] Investigate dpolybar-* references still being called 226 times from GDM session — old polybar scripts in session autostart
- [ ] Extract device-specific sway config (touchpad, screen brightness) to mexicali include

## Hardware
- [x] Keyboard backlight controls not working
- [ ] Add wireless-regdb to metapac — missing causes wrong Wi-Fi channels/power for region
- [ ] Investigate broadcom-wl driver — unmaintained, bypasses Spectre mitigations, causes ~1min Wi-Fi delay on boot; explore brcmfmac
- [ ] Fix bluetooth permissions — /etc/bluetooth is 755, bluetoothd expects 555
- [ ] Check external USB HDD — disconnected 19 times in 30s during boot log; cable/enclosure may be failing
