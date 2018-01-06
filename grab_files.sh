#!/bin/sh

EFI_PATH="EFI"
ISOLINUX_PATH="isolinux"
KERNELS_PATH="kernels"

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

INSTALLER_EFI=$BASE_URL/$EFI_PATH
INSTALLER_ISOLINUX=$BASE_URL/$ISOLINUX_PATH
INSTALLER_KERNELS=$BASE_URL/$KERNELS_PATH

rsync -r -v $INSTALLER_KERNELS .
rsync -r -v $INSTALLER_ISOLINUX . 
rsync -r -v $INSTALLER_EFI .
