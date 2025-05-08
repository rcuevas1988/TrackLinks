#!/bin/bash

# Archivo a procesar
FILE="client/src/components/AdvancedLinkStats.tsx"

# Corregimos los errores LSP
sed -i 's/tickColor/tickStroke/g' $FILE
sed -i 's/legendColor/legendTextColor/g' $FILE
sed -i 's/textColor/tickTextFill/g' $FILE

# Cambiamos el fondo del gráfico de barras para el distribución por hora
sed -i 's/enableArcLabels={true}/enableLabel={true}/g' $FILE
sed -i 's/arcLabelsRadiusOffset={0.6}//g' $FILE
sed -i 's/arcLinkLabelsDiagonalLength={16}//g' $FILE
sed -i 's/arcLinkLabelsStraightLength={24}//g' $FILE

# Mejoramos el contraste de textos en el gráfico de barras
sed -i 's/axisBottom={{/axisBottom={{\n                            tickStroke: "#ffffff",\n                            legendTextColor: "#ffffff",\n                            tickTextFill: "#ffffff",/g' $FILE
sed -i '/label,//s/^/                          labelTextColor: "#ffffff",\n                          /' $FILE

# Mejoramos el contraste en el HeatMap
sed -i 's/theme={{ fontSize: 12 }}/theme={{ fontSize: 12, labels: { text: { fill: "#ffffff" } } }}/g' $FILE

echo "Correcciones aplicadas en los gráficos"
