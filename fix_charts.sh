#!/bin/bash

# Crear una copia del archivo original
cp client/src/components/AdvancedLinkStats.tsx client/src/components/AdvancedLinkStats_backup.tsx

# Eliminar todos los enableLabel y enableArcLabels
sed -i 's/enableLabel={true}//g; s/enableArcLabels={true}//g' client/src/components/AdvancedLinkStats.tsx

# Corregir líneas vacías consecutivas
sed -i '/^[ \t]*$/{ N; /^\n[ \t]*$/D; }' client/src/components/AdvancedLinkStats.tsx

# Eliminar arcLabelsRadiusOffset y arcLinkLabelsDiagonalLength
sed -i 's/arcLabelsRadiusOffset={0.6}//g; s/arcLinkLabelsDiagonalLength={16}//g; s/arcLinkLabelsStraightLength={24}//g' client/src/components/AdvancedLinkStats.tsx

# Añadir tema para color de texto
sed -i '/margin={{ top: 40, right: 80, bottom: 40, left: 80 }}/a \                            theme={{ fontSize: 12, labels: { text: { fill: "#ffffff" } } }}' client/src/components/AdvancedLinkStats.tsx

# Arreglar la indentación del itemTextColor
sed -i 's/                          itemTextColor: "#ffffff",/                                itemTextColor: "#ffffff",/g' client/src/components/AdvancedLinkStats.tsx

echo "Correcciones aplicadas al archivo AdvancedLinkStats.tsx"
