#!/system/bin/sh
 
mount -o remount,rw /system  

chmod 777 /system/etc/init.d
 
for script in $(ls /system/etc/init.d)
do
	chmod 775 /system/etc/init.d/$script
	sh /system/etc/init.d/$script
done
