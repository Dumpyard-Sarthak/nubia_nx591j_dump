#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15158572:abbf4b15fcdd9b016e57c703f2ee45df61e1e616; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:11724072:e951143333f46e600c60795e68052ffbe33cc50e EMMC:/dev/block/bootdevice/by-name/recovery abbf4b15fcdd9b016e57c703f2ee45df61e1e616 15158572 e951143333f46e600c60795e68052ffbe33cc50e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
