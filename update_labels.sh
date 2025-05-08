#!/bin/bash

# Archivo a procesar
FILE="client/src/components/AdvancedLinkStats.tsx"

# Cambiar todas las etiquetas a blanco para mejor contraste
sed -i 's/arcLinkLabelsTextColor="#cccccc"/arcLinkLabelsTextColor="#ffffff"/g' $FILE
sed -i 's/arcLinkLabelsTextColor="#888888"/arcLinkLabelsTextColor="#ffffff"/g' $FILE

# Aumentar grosor de las líneas de las etiquetas
sed -i 's/arcLinkLabelsThickness={2}/arcLinkLabelsThickness={3}/g' $FILE

# Mejorar contraste para las leyendas
sed -i 's/itemTextColor="#999"/itemTextColor="#ffffff"/g' $FILE
sed -i '/symbolShape: '\''circle'\''/a \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ itemTextColor: "#ffffff",' $FILE

echo "Actualización completada para las etiquetas de los gráficos"
