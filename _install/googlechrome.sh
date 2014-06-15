echo '###############################################'
echo 'INSTALL Chrome'
echo '###############################################'

#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | #sudo apt-key add -
#echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' > /etc/#apt/sources.list.d/google.list
#apt-get update
#apt-get install google-chrome-stable
#su $user -c 'google-chrome'

echo "Download Google Chrome from https://www.google.com/intl/de/chrome/browser/ - google-chrome-stable_current*.deb" 
while [ ! -s /home/$user/Downloads/google-chrome-stable_current*.deb ]; do
    printf "" 
done

dpkg --install /home/$user/Downloads/google-chrome-stable_current*.deb
