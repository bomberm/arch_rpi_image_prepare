sudo mkdir -p /mnt/image
sudo mount /dev/sdb2 /mnt/image
sudo mount -o bind /proc /mnt/image/proc
sudo mount -o bind /dev  /mnt/image/dev

sudo pacman --noconfirm -r /mnt/image -Sy
sudo pacman --noconfirm -r /mnt/image -U prebuild/*pkg.tar.xz 

#TODO -- aquire librarybox package

sudo pacman --noconfirm -r /mnt/image -U librarybox-full* 

##--- additional wifi stuff
sudo pacman --noconfirm -r /mnt/image -S dkms-8188eu dkms-8188cu



##--- config tools

## cleanup Image
sudo pacman --noconfirm -r /mnt/image -Scc



