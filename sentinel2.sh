# Para descargar todas las bandas
URL=https://sentinel-s2-l1c.s3.amazonaws.com/tiles/19/P/BK/2016/6/5/0/
URL=https://sentinel-s2-l1c.s3.amazonaws.com/tiles/19/P/BK/2018/3/17/0/

# Las bandas ESPECTRALES
echo A=$(echo B0{1..12},)
A=B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B11,B12
$( eval echo "wget --convert-links --page-requisites --no-parent -c  \
   ${URL}{${A}}.jp2" )

# Las demas bandas
 $( eval echo "wget --mirror --convert-links --page-requisites --no-parent -c  \
 ${URL}{B8A,TCI}.jp2" )

# Los metadatos y quicklooks
A=metadata.xml,preview.jp2,preview.jpg,productInfo.json,tileInfo.json
 $( eval echo "wget --mirror --convert-links --page-requisites --no-parent -c  \
 ${URL}{${A}}" )
