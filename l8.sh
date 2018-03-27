# After finding the scene, get proper URL

firefox https://landsat-pds.s3.amazonaws.com/L8/006/055/LC80060552016233LGN00/LC80060552016233LGN00_B1.TIF

URL=https://landsat-pds.s3.amazonaws.com/L8/007/055/LC80070552016032LGN00/LC80070552016032LGN00_

# Bandas espectrales
A=B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11
 $( eval echo "wget --mirror --convert-links --page-requisites --no-parent -c  \
 ${URL}B{1..11}.TIF" )

# MEtadatos y evaluación de calidad
A=BQA.TIF,MTL.txt
 $( eval echo "wget --mirror --convert-links --page-requisites --no-parent -c  \
 ${URL}{${A}}" )
