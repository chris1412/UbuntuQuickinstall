#!/bin/bash

if [ "$MainScript" != "true" ]; then
    echo "This is not the main script!" 1>&2
    exit 1
fi

echo '###############################################'
echo 'INSTALL VisualParadigm CE'
echo '###############################################'

echo "Download 'VisualParadigm CE' from http://www.visual-paradigm.com/download/vpuml.jsp?edition=ce - Visual_Paradigm_for_UML_CE_Linux_64bit_*.sh" 
while [ ! -s /home/$user/Downloads/Visual_Paradigm_for_UML_CE_Linux_64bit_*.sh ]; do
    printf "" 
done

sh /home/$user/Downloads/Visual_Paradigm_for_UML_CE_Linux_64bit_*.sh


#while true; do
#    echo -n "create a desktop entry for TeamSpeak3? [YyJjNn]: "
#    read desktopEntry
#    case $desktopEntry in
#        [YyJj]* ) 
#            su $user -c "mkdir -p /home/$user/.local/share/applications/"
#            su $user -c "cp /opt/Visual_Paradigm_for_UML_CE/Visual_Paradigm_for_UML_*.desktop /home/$user/.local/share/applications/Visual_Paradigm_for_UML.desktop"
#            break
#            ;;
#        [Nn]* ) 
#            break
#            ;;
#    esac
#done


