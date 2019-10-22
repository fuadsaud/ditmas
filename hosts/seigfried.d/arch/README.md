# Install Arch Linux

## Network

```sh
  $ ping google.com
``

## Disk

### Partitioning

  ```
  cfdisk
  ```

Create:

- 1 efi partition [550m] (EFI system)
- 1 boot partition [550m] (Linux filesystem)
- 1 lvm partition [rest] (Linux lvm)

### Formatting

  ```sh
    $ mkfs.fat -F32 /dev/nvme0n1p1                # format efi as FAT32
    $ mkfs.ext4 /dev/nvme0n1p2                    # format boot as ext4

    $ cryptsetup luksFormat /dev/nvme0n1p3        # encrypt lvm
    $ cryptsetup open /dev/nvme0n1p3 lvm          # unlock lvm
    $ pvcreate --dataalignment 1m /dev/mapper/lvm # create lvm physical volume
    $ vgcreate vg0 /dev/mapper/lvm                # create volume group
    $ lvcreate -L 30GB vg0 -n lvroot              # create root logical volume
    $ lvcreate -L 50GB vg0 -n lvvar               # create var logical volume
    $ lvcreate -l 100%FREE vg0 -n lvhome          # create home logical volume
    $ modprobe dm_mod                             # load device mapping kernel module
    $ vgscan                                      # scan for lvm volume groups
    $ vgchange -ay                                # activate logical volumes in vg0
    $ mkfs.ext4 /dev/vg0/lv_root                  # format lv_root as ext4
    $ mkfs.ext4 /dev/vg0/lv_home                  # format lv_home as ext4
    $ mount /dev/vg0/lv_root /mnt                 # mount root volume
    $ mkdir /mnt/boot
    $ mkdir /mnt/boot/efi
    $ mkdir /mnt/home
    $ mount /dev/nvme0n1p2 /mnt/boot              # mount boot partition
    $ mount /dev/nvme0n1p1 /mnt/boot/efi          # mount efi partition
    $ mount /dev/vg0/lv_home /mnt/home            # mount home partition
    $ pacstrap -i /mnt base                       # install arch base distro
    $ genfstab -U -p /mnt >> /mnt/etc/fstab       # generate fstab file
  ```

## Install Arch

  ```
    $ arch-chroot /mnt
    $ pacman -S \
      base-devel \
      grub \
      efibootmgr \
      dosfstools \
      openssh \
      os-prober \
      mtools  \
      linux-headers \
      linux-lts \
      linux-lts-headers     # install a bunch of packages
  ```

## Resources

[How to better enable Color Emojis](https://www.reddit.com/r/archlinux/comments/9q8dlj/how_to_better_enable_color_emojis/)
