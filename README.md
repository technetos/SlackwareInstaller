# Usage

### Clone the repo

```
git clone https://github.com/technetos/SlackwareInstaller.git
```

### Run the script

```
./grab_files.sh
```
Doing so will grap the following directories:
+ `kernels` - The kernels for the slackware installer
+ `isolinux` - The ramdisk that contains the actual installer
+ `EFI` - The efi files required to boot an efi system

and create the following directory: 
+ `slackware64` - The packages for a minimal 64 bit slackware installation
