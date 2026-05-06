#!/usr/bin/env bash
  lb config noauto \
   --binary-images iso-hybrid \
   --backports true \
   --bootloaders "grub-efi grub-pc" \
   --color \
   --mode debian \
   --architectures amd64 \
   --image-name "BrDeb" \
   --linux-flavours amd64 \
   --distribution stable \
   --archive-areas "main contrib non-free" \
   --parent-archive-areas "main contrib non-free" \
   --parent-debian-installer-distribution stable \
   --debian-installer live \
   --debian-installer-gui true \
   --updates true \
   --interactive false \
   --memtest none \
   --security true \
   --cache true \
   --apt-recommends true \
   --iso-application BrDeb \
   --iso-preparer BrDeb \
   --iso-publisher "Lucas Gabriel (lucmsilva) <lucmsilva651@gmail.com>" \
   --iso-volume BrDeb \
   --bootappend-live "boot=live locales=pt_BR.UTF-8 keyboard-layouts=br username=usuario hostname=brdeb timezone=America/Sao_Paulo autologin" \
   "${@}"
