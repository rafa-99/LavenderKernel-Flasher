# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Lavender Custom Kernel for LineageOS
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=lavender
supported.versions=9 - 12
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes


## AnyKernel install
dump_boot;

# begin ramdisk changes


# end ramdisk changes

write_boot;
## end install
