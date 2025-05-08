#!/bin/bash

# Archivo a procesar
FILE="client/src/components/AdvancedLinkStats.tsx"

# Reemplazar enableLabel por enableArcLabels en los gráficos circulares
sed -i 's/enableLabel={true}/enableArcLabels={true}/g' $FILE

# Eliminar propiedades enableLabel en gráficos de línea
sed -i '/ResponsiveLine/,/<\/ResponsiveLine>/ s/enableLabel={true}//g' $FILE

# Añadir theme a todos los gráficos circulares para texto blanco
sed -i '/ResponsivePie/,/legends=\[/ s/arcLabelsTextColor="#ffffff"/arcLabelsTextColor="#ffffff"\n                            theme={{ labels: { text: { fill: "#ffffff" } } }}/g' $FILE

# Eliminar propiedades tickStroke, legendTextColor, etc.
sed -i 's/tickStroke: "#ffffff",//g' $FILE
sed -i 's/legendTextColor: "#ffffff",//g' $FILE
sed -i 's/tickTextFill: "#ffffff"//g' $FILE

echo "Correcciones aplicadas a los gráficos"
