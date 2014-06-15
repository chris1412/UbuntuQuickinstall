echo '###############################################'
echo 'INSTALL Heimdall Suite'
echo '###############################################'

echo "Download Heimdall Commandline & Frontend from http://www.glassechidna.com.au/products/heimdall/ - ubuntu*-heimdall_*_amd64.deb & ubuntu*-heimdall-frontend_*_amd64.deb" 
while [ ! -s /home/$user/Downloads/ubuntu*-heimdall_*_amd64.deb ] && [ ! -s /home/$user/Downloads/ubuntu*-heimdall-frontend_*_amd64.deb ]; do
    printf "" 
done

apt-get install libusb-dev

dpkg --install /home/$user/Downloads/ubuntu*-heimdall_*_amd64.deb
dpkg --install /home/$user/Downloads/ubuntu*-heimdall-frontend_*_amd64.deb
