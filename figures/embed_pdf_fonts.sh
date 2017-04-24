#!/bin/bash

# gs -dCompatibilityLevel=1.4 \
#    -dPDFSETTINGS=/screen \
#    -dCompressFonts=true \
#    -dSubsetFonts=true \
#    -dNOPAUSE \
#    -dBATCH \
#    -sDEVICE=pdfwrite \
#    -sOutputFile=${1}.embed.pdf \
#    -c ".setpdfwrite <</NeverEmbed [ ]>> setdistillerparams" \
#    -f ${1}.pdf

gs -q -dNOPAUSE -dBATCH -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=${1}.embed.pdf ${1}.pdf
