#!/bin/bash
#
:<<COMENTARIO
Shellscript to burn linux
iso images on flashdrive
COMENTARIO
#
read -p "Informe o dispositivo que receberá a imagem ISO: " flashdrive
echo "${flashdrive:?Atenção este campo é de preenchimento obrigatório\!}"
echo
read -p "Informe o caminho da imagem ISO que será gravada: " isoimage
echo "${isoimage:?Atenção este campo é de preenchimento obrigatório\!}"
echo
#
dd if=$isoimage of=$flashdrive status="progress" conv="fsync"
