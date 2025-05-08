#!/bin/bash

# Archivo a procesar
FILE="client/src/components/AdvancedLinkStats.tsx"

# Aplicar un fondo más oscuro a todos los gráficos 
sed -i 's/<div className="h-80">/<div className="h-80 bg-\[#131e38\] rounded-lg p-2">/g' $FILE

# Eliminar propiedades enableArcLabels en gráficos que no son Pie
sed -i '/ResponsiveLine/,/enableArea={true}/s/enableArcLabels={true}//g' $FILE
sed -i '/ResponsiveBar/,/animate={true}/s/enableArcLabels={true}//g' $FILE

# Eliminar parámetros arcLabels... en gráficos no Pie
sed -i '/ResponsiveLine/,/enableArea={true}/s/arcLabelsRadiusOffset={0.6}//g' $FILE
sed -i '/ResponsiveLine/,/enableArea={true}/s/arcLinkLabelsDiagonalLength={16}//g' $FILE
sed -i '/ResponsiveLine/,/enableArea={true}/s/arcLinkLabelsStraightLength={24}//g' $FILE

sed -i '/ResponsiveBar/,/animate={true}/s/arcLabelsRadiusOffset={0.6}//g' $FILE
sed -i '/ResponsiveBar/,/animate={true}/s/arcLinkLabelsDiagonalLength={16}//g' $FILE
sed -i '/ResponsiveBar/,/animate={true}/s/arcLinkLabelsStraightLength={24}//g' $FILE

# Arreglar cualquier línea vacía o problemática
sed -i 's/  *$//g' $FILE

echo "Corrección de fondos y propiedades de gráficos completada"
