#!/bin/bash
###################################################################
###                                                             ###
###                 Organizador de Arquivos                     ###
###                 by: Odilon Tente                            ###
###                 date: 24/07/2018                            ###
###                                                             ###
###################################################################
echo "Digite a pasta a ser Organizada:  "
read resp ; cd $resp
echo "Voce está em:  "; pwd ; sleep 2
array=( "odt" "ods" "odp" "doc" "docx" "jpg" "jpeg" "png" "ppt" "pptx" "avi" "mp3" "mp4" "pdf" "txt" )
extencao=$(locate $resp | grep -E '\.($ext)$')
for extencao in ${array[@]}; do
    echo "Organizando arquivos :  " $extencao
    mkdir $extencao ; mv *.$extencao $extencao/ 
    echo "Saindo....."
    sleep 2
done