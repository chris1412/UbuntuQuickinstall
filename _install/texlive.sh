#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL texlive'
echo '###############################################'

#apt-get install texlive texlive-doc-de texlive-latex-extra texlive-lang-german texlive-bibtex-extra

echo "Download getnonfreefonts from http://www.tug.org/texlive/acquire-netinstall.html - install-tl-unx.tar.gz" 
while [ ! -s /home/$user/Downloads/install-tl-unx.tar.gz ]; do
    printf "" 
done   

cd /home/$user/Downloads/     
tar xfvz install-tl-unx.tar.gz
cd install-tl-*

echo " -----------------"
echo " Do not forget to create Symlinks Options Menue O -> L - OK: [ENTER]"
echo " -----------------"
read ok

./install-tl

rm -rf install-tl-*
cd $BaseDir

echo '###############################################'
echo 'INSTALL texstudio'
echo '###############################################'

#add-apt-repository ppa:blahota/texstudio
apt-get update
apt-get install texstudio

#echo "Download texstudio from http://texstudio.sourceforge.net/#download" 
#while [ ! -s /home/$user/Downloads/texstudio_*_amd64.deb ]
#  do
#    printf "" 
#done

#dpkg --install /home/$user/Downloads/texstudio_*_amd64.deb

echo '###############################################'
echo 'INSTALL getnonfreefonts'
echo '###############################################'

echo "Download getnonfreefonts from http://tug.org/fonts/getnonfreefonts/ - install-getnonfreefonts" 
while [ ! -s /home/$user/Downloads/install-getnonfreefonts ]; do
    printf "" 
done

cd /home/$user/Downloads/
texlua install-getnonfreefonts
getnonfreefonts-sys -l
getnonfreefonts-sys -a
texhash /usr/local/share/texmf

echo '###############################################'
echo 'INSTALL natbib'
echo '###############################################'

echo "Download natbib from http://www.ctan.org/tex-archive/biblio/bibtex/contrib/german/din1505 - din1505.zip" 
while [ ! -s /home/$user/Downloads/din1505.zip ]; do
    printf "" 
done

mkdir -p /usr/local/share/texmf/bibtext/bst
unzip /home/$user/Downloads/din1505.zip -d /usr/local/share/texmf/bibtext/bst
texhash /usr/local/share/texmf/bibtext/bst
