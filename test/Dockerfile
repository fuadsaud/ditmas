FROM archlinux:latest

RUN echo 'DisableSandbox' >> /etc/pacman.conf
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm base-devel git sudo

RUN useradd -m -G wheel fuad
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Mask TTY services that fail in containers
RUN systemctl mask getty@tty1.service serial-getty@ttyS0.service

USER fuad
ENV HOME=/home/fuad
ENV DITMAS_DIR=/home/fuad/.ditmas

ENTRYPOINT ["/lib/systemd/systemd"]
