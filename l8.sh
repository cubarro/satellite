# Buscando datos de LANDSAT

# Ubico la escena para Venezuela
#  busco con search.remotepixel.ca
firefox https://search.remotepixel.ca/#5/7/-66
URL=https://landsat-pds.s3.amazonaws.com/c1/L8/006/054/LC08_L1TP_006054_20180303_20180319_01_T1/LC08_L1TP_006054_20180303_20180319_01_T1_

# Bandas espectrales
A=B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11
 $( eval echo "wget --mirror --convert-links --page-requisites --no-parent -c  \
 ${URL}B{1..11}.TIF" )

# MEtadatos y evaluación de calidad
A=BQA.TIF,MTL.txt
 $( eval echo "wget --mirror --convert-links --page-requisites --no-parent -c  \
 ${URL}{${A}}" )
