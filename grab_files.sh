#!/bin/sh

EFI_PATH="EFI/BOOT/"

BASE_URL="rsync://mirrors.kernel.org/slackware/slackware64-current"
EXCLUDES="
--exclude=e
--exclude=f
--exclude=kde
--exclude=kdei
--exclude=xap
--exclude=xfce
--exclude=y"
rsync -r -v $EXCLUDES $BASE_URL"/slackware64" .

INSTALLER_KERNEL=$BASE_URL"/kernels/huge.s/bzImage"
INSTALLER_RAMDISK=$BASE_URL"/isolinux/initrd.img"

rsync -v $INSTALLER_KERNEL $EFI_PATH
rsync -v $INSTALLER_RAMDISK $EFI_PATH
