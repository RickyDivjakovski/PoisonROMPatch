#!/sbin/sh

# POISON ROM THEMING SYSTEM
# Created by Ricky Divjakovski

for folder in $(ls /data/local/tmp/patching/system/app)
do
  if [ -f /system/app/$folder ]; then
    cd /data/local/tmp/patching/system/app/$folder
	  /data/local/tmp/patching/zip -r /system/app/$folder *
	  chmod 644 /system/app/$folder
  fi
  for file in $(ls /data/local/tmp/patching/system/app/$folder)
  do
    cd /data/local/tmp/patching/system/app/$folder/$file
	/data/local/tmp/patching/zip -r /system/app/$folder/$file *
	chmod 644 /system/app/$folder/$file
  done
done

  
for folder in $(ls /data/local/tmp/patching/system/priv-app)
do
  if [ -f /system/priv-app/$folder ]; then
    cd /data/local/tmp/patching/system/priv-app/$folder
	  /data/local/tmp/patching/zip -r /system/priv-app/$folder *
	  chmod 644 /system/priv-app/$folder
  fi
  for file in $(ls /data/local/tmp/patching/system/priv-app/$folder)
  do
    cd /data/local/tmp/patching/system/priv-app/$folder/$file
	/data/local/tmp/patching/zip -r /system/priv-app/$folder/$file *
	chmod 644 /system/priv-app/$folder/$file
  done
done
