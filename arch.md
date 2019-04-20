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
    $ mkfs.fat -F32 /dev/sda1                     # format efi as FAT32
    $ mkfs.ext4 /dev/sda2                         # format boot as ext4

    $ cryptsetup luksFormat /dev/sda3             # encrypt lvm
    $ cryptsetup open /dev/sda3 lvm               # unlock lvm
    $ pvcreate --dataalignment 1m /dev/mapper/lvm # create lvm physical volume
    $ vgcreate volgroup0 /dev/mapper/lvm          # create volume group
    $ lvcreate -L 30GB volgroup0 -n lv_root       # create root logical volume
    $ lvcreate -L 15GB volgroup0 -n lv_home       # create home logical volume
    $ modprobe dm_mod                             # load device mapping kernel module
    $ vgscan                                      # scan for lvm volume groups
    $ vgchange -ay                                # activate logical volumes in volgroup0
    $ mkfs.ext4 /dev/volgroup0/lv_root            # format lv_root as ext4
    $ mkfs.ext4 /dev/volgroup0/lv_home            # format lv_home as ext4
    $ mount /dev/volgroup0/lv_root /mnt           # mount root volume
    $ mkdir /mnt/boot
    $ mkdir /mnt/home
    $ mount /dev/sda2 /mnt/boot                   # mount boot partition
    $ mount /dev/volgroup0/lv_home /mnt/home      # mount home partition
    $ pacstrap -i /mnt base # install arch base distro
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


