#!/bin/bash

# Archivo a procesar
FILE="client/src/components/AdvancedLinkStats.tsx"

# Buscamos todos los gráficos circulares salvo el primero (que ya actualizamos)
sed -i 's/innerRadius={0.5}/innerRadius={0.4}/g' $FILE
sed -i 's/cornerRadius={3}/cornerRadius={4}/g' $FILE
sed -i 's/borderWidth={1}/borderWidth={2}/g' $FILE
sed -i 's/borderColor={{ from: '\''color'\'', modifiers: \[\['\''darker'\'', 0.2]] }}/borderColor={{ from: '\''color'\'', modifiers: \[\['\''darker'\'', 0.3]] }}/g' $FILE
sed -i 's/arcLinkLabelsTextColor="#888888"/arcLinkLabelsTextColor="#cccccc"/g' $FILE
sed -i 's/arcLabelsTextColor={{ from: '\''color'\'', modifiers: \[\['\''darker'\'', 2]] }}/arcLabelsTextColor="#ffffff"/g' $FILE

# Añadimos parámetros adicionales a todos los gráficos que no tienen estas propiedades
sed -i '/animate={true}/a \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ enableArcLabels={true}\n                            arcLabelsRadiusOffset={0.6}\n                            arcLinkLabelsDiagonalLength={16}\n                            arcLinkLabelsStraightLength={24}' $FILE

echo "Actualización completada para todos los gráficos circulares"
