#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL Android Studio'
echo '###############################################'

echo "Download Android Studio from http://developer.android.com/sdk/installing/studio.html#download - android-studio-bundle-*.tgz" 
while [ ! -s /home/$user/Downloads/android-studio-bundle-*.tgz ]; do
    printf "" 
done

tar xfvz /home/$user/Downloads/android-studio-bundle-*.tgz -C /opt
chown -R $user:$group /opt/android-studio
chmod +x /opt/android-studio/bin/studio.sh
su $user -c '/opt/android-studio/bin/studio.sh'

#while true; do
#	echo -n "create a desktop entry for Android Studio? [YyJjNn]: "
#	read desktopEntry
#	case $desktopEntry in
#		[YyJj]* ) 
#		    su $user -c "mkdir -p /home/$user/.local/share/applications/"
#		    su $user -c "meld home/$user/.local/share/applications/AndroidStudio.desktop /home/$user/.local/share/applications/AndroidStudio.desktop"
#		    break
#		    ;;
#		[Nn]* ) 
#		    break
#		    ;;
#	esac
#done
