# Usage

### Clone the repo

```
git clone https://github.com/technetos/SlackwareInstaller.git
```

### Run the script

```
./grab_files.sh
```
Doing so will populate `EFI/BOOT/` with the following files:
+ `bzImage` - The kernel for the slackware installer
+ `initrd.img` - The ramdisk that contains the actual installer

and create the following directory: 
+ `slackware64` - The packages for a minimal 64 bit slackware installation
