#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    sudo sh $0
    exit
fi

UbuntuVersion="14.04"

MainScript=true

BaseDir=$(pwd)

user=chris
group=chris

menu() {
    MENU=$(dialog --title " Main Menu " --menu " " 20 50 16\
    0 "Nvidia"\
    1 "Userconfig"\
    2 "Gnome Shell"\
    3 "[+] Basic Tools"\
    4 "[+] Internet Tools"\
    5 "[+] Developer Tools"\
    6 "[+] Grafik Tools"\
    7 "[+] Media Tools"\
    8 "[+] Ebook Tools"\
    9 "[+] Server Tools"\
    r "Reboot"\
    q "Quit"\
    3>&1 1>&2 2>&3 3>&-); 
    
    echo " "
    clear
    
    case $MENU in

        0 )
            . _install/nvidia.sh
            ;;
            
        1 ) 
            . _install/userconfig.sh
            ;;
            
        2 ) 
            . _install/gnomeshell.sh
            ;;

        3 )
            SUBMENU=$(dialog --title "Basic Tools" \
                   --checklist "choose to install" 20 50 16 \
                   1 "Bashtools" off\
                   2 "Unity-Greeter" off\
                   3 "ThinkPad Extras" off\
                   4 "Media Extensions" off\
                   5 "Logitech Unifying" off\
                   6 "Dropbox" off\
                   7 "Keepass" off\
                   8 "Truecrypt" off\
                   9 "Git" off\
                   10 "LaTeX" off\
                   11 "Everpad" off\
                   12 "Virtual Box" off\
                   13 "Vagrant" off\
                   14 "Multisystem" off\
                   15 "Wireshark" off\
                   3>&1 1>&2 2>&3 3>&-);
                   
            echo $SUBMENU
    
            echo " "
            clear
                
            for i in $SUBMENU; do
                case $i in
                    1 )
                        . _install/bashtools.sh
                        ;;
                    2 )
                        . _install/unity-greeter.sh
                        ;;
                    3 )
                        . _install/tpextras.sh
                        ;;
                    4 )
                        . _install/mediaext.sh
                        ;;
                    5 )
                        . _install/solaar.sh
                        ;;
                    6 )
                        . _install/dropbox.sh
                        ;;
                    7 )
                        . _install/keepass2.sh
                        ;;
                    8 )
                        . _install/truecrypt.sh
                        ;;
                    9 )
                        . _install/git.sh
                        ;;
                    10 )
                        . _install/texlive.sh
                        ;;
                    11 )
                        . _install/everpad.sh
                        ;;
                    12 )
                        . _install/virtualbox.sh
                        ;;
                    13 )
                        . _install/vagrant.sh
                        ;;
                    14 )
                        . _install/multisystem.sh
                        ;;
                    15 )
                        . _install/wireshark.sh
                        ;;
                esac
            done
            ;;

        4 )
            SUBMENU=$(dialog --title "Internet Tools" \
                   --checklist "choose to install" 20 50 16 \
                   1 "Google Chrome" off\
                   2 "Pidgin" off\
                   3 "Skype" off\
                   4 "Thunderbird" off\
                   5 "TeamSpeak" off\
                   6 "Mumble" off\
                   7 "Zotero" off\
                   3>&1 1>&2 2>&3 3>&-);
                   
            echo $SUBMENU
    
            echo " "
            clear
                
            for i in $SUBMENU; do
                case $i in
                    1 )
                        . _install/googlechrome.sh
                        ;;
                    2 )
                        . _install/pidgin.sh
                        ;;
                    3 )
                        . _install/skype.sh
                        ;;
                    4 )
                        . _install/thunderbird.sh
                        ;;
                    5 )
                        . _install/teamspeak.sh
                        ;;
                    6 )
                        . _install/mumble.sh
                        ;;
                    7 )
                        . _install/zotero.sh
                        ;;
                esac
            done
            ;;

        5 )
            SUBMENU=$(dialog --title "Developer Tools" \
                   --checklist "choose to install" 20 50 16 \
                   1 "Oracle Java" off\
                   2 "OpenJDK" off\
                   3 "Scala" off\
                   4 "Maven" off\
                   5 "Idea Community Edition" off\
                   6 "Idea Ultimate Edition" off\
                   7 "PhpStorm" off\
                   8 "PyCharm" off\
                   9 "Android SDK" off\
                   10 "Android Studio" off\
                   11 "Heimdall" off\
                   12 "Modelio" off\
                   13 "ArgoUML" off\
                   14 "VisualParadigm CE" off\
                   15 "Sublime Text 3" off\
                   3>&1 1>&2 2>&3 3>&-);
                   
            echo $SUBMENU
    
            echo " "
            clear
                
            for i in $SUBMENU; do
                case $i in
                    1 )
                        . _install/oracleJava.sh
                        ;;
                    2 )
                        . _install/openJDK.sh
                        ;;
                    3 )
                        . _install/scala.sh
                        ;;
                    4 )
                        . _install/maven.sh
                        ;;
                    5 )
                        . _install/ideaIC.sh
                        ;;
                    6 )
                        . _install/ideaIU.sh
                        ;;
                    7 )
                        . _install/phpstorm.sh
                        ;;
                    8 )
                        . _install/pyCharm.sh
                        ;;
                    9 )
                        . _install/androidsdk.sh
                        ;;
                    10 )
                        . _install/androidstudio.sh
                        ;;
                    11 )
                        . _install/heimdall.sh
                        ;;
                    12 )
                        . _install/modelio.sh
                        ;;
                    13 )
                        . _install/argouml.sh
                        ;;
                    14 )
                        . _install/visualparadigmCE.sh
                        ;;
                    15 )
                        . _install/sublime.sh
                        ;;
                esac
            done
            ;;

        6 )
            SUBMENU=$(dialog --title "Grafik Tools" \
                   --checklist "choose to install" 20 50 16 \
                   1 "Gimp" off\
                   2 "Dia" off\
                   3 "Inkscape" off\
                   4 "Xournal" off\
                   3>&1 1>&2 2>&3 3>&-);
                   
            echo $SUBMENU
    
            echo " "
            clear
                
            for i in $SUBMENU; do
                case $i in
                    1 )
                        . _install/gimp.sh
                        ;;
                    2 )
                        . _install/dia.sh
                        ;;
                    3 )
                        . _install/inkscape.sh
                        ;;
                    4 )
                        . _install/xournal.sh
                        ;;
                esac
            done
            ;;

        7 )
            SUBMENU=$(dialog --title "Media Tools" \
                   --checklist "choose to install" 20 50 16 \
                   1 "Spotify" off\
                   2 "VLC" off\
                   3 "TV-Browser" off\
                   3>&1 1>&2 2>&3 3>&-);
                   
            echo $SUBMENU
    
            echo " "
            clear
                
            for i in $SUBMENU; do
                case $i in
                    1 )
                        . _install/spotify.sh
                        ;;
                    2 )
                        . _install/vlc.sh
                        ;;
                    3 )
                        . _install/tvbrowser.sh
                        ;;
                esac
            done
            ;;

        8 )
            SUBMENU=$(dialog --title "Ebook Tools" \
                   --checklist "choose to install" 20 50 16 \
                   1 "Calibre" off\
                   2 "FBreader" off\
                   3 "Sigil" off\
                   3>&1 1>&2 2>&3 3>&-);
                   
            echo $SUBMENU
    
            echo " "
            clear
                
            for i in $SUBMENU; do
                case $i in
                    1 )
                        . _install/calibre.sh
                        ;;
                    2 )
                        . _install/fbreader.sh
                        ;;
                    3 )
                        . _install/sigil.sh
                        ;;
                esac
            done
            ;;


        9 )
            SUBMENU=$(dialog --title "Server Tools" \
                   --checklist "choose to install" 20 50 16 \
                   1 "Apache" off\
                   2 "MySQL" off\
                   3 "MySQL Workbench" off\
                   4 "PHP" off\
                   5 "PHP Composer" off\
                   6 "Postfix" off\
                   3>&1 1>&2 2>&3 3>&-);
                   
            echo $SUBMENU
    
            echo " "
            clear
                
            for i in $SUBMENU; do
                case $i in
                    1 )
                        . _install/apache.sh
                        ;;
                    2 )
                        . _install/mysql.sh
                        ;;
                    3 )
                        . _install/mysqlworkbench.sh
                        ;;
                    4 )
                        . _install/php.sh
                        ;;
                    5 )
                        . _install/phpcomposer.sh
                        ;;
                    6 )
                        . _install/postfix.sh
                        ;;
                esac
            done
            ;;

        r )
            reboot
            quit
            ;;

        q )
            quit
            ;;
    esac
}

dependencies() {

    echo "Dependencies:"
    GLOBALDEPENDENCIES="meld" # space separated
    for PACKAGE  in $GLOBALDEPENDENCIES; do
        echo "------------------"
        echo "check for $PACKAGE:"
        if ! dpkg-query -W $PACKAGE; then 
            apt-get install $PACKAGE;
        fi
        echo "------------------"
    done
}

main() {
    echo "  "
    echo "  -----------------"
    echo "  Main Menu [ENTER]"
    echo "  -----------------"
    echo "  "
    read main
}

quit() {
    exit 1
}

dependencies

while true; do

    main

    cd $BaseDir
        
    menu
    
done

