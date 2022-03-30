# Import file generated by the installer
. /usr/local/potabi/config.conf 

# Mount release
mkdir -pv /mnt/install
zpool create install-potabi /dev/${disk}
zfs set -f mountpoint=/mnt/install install-potabi
zfs set compression=gzip-6 install-potabi


# Unmount at end of script
zfs unmount -f /mnt/install