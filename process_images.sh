#!/bin/bash

# Použití: ./process_images.sh <cesta_ke_složce>

if [ "$#" -lt 1 ]; then
  echo "Použití: $0 <cesta_ke_složce>"
  exit 1
fi

INPUT_DIR="$1"

if [ ! -d "$INPUT_DIR" ]; then
  echo "Chyba: složka '$INPUT_DIR' neexistuje."
  exit 1
fi

# Vzor pro rozpoznání původních obrázků
IMG_PATTERN="*.jpg *.jpeg *.png *.tif *.tiff"

# 1) Enhance všech původních obrázků
echo "Začínám enhancement původních obrázků..."
for IMG in "$INPUT_DIR"/*; do
  if [[ "$IMG" =~ \.(jpg|jpeg|png|tif|tiff)$ ]] && [[ ! "$IMG" =~ enhanced ]]; then
    echo "Enhancing: $IMG"
    image_enhancement -m model1 -i "$IMG"
  fi
done

# 2) Spustit generate_mc nad enhanced obrázky
echo "Generování MC pro enhanced obrázky..."
for IMG in "$INPUT_DIR"/*enhanced*; do
  if [[ -f "$IMG" ]]; then
    echo "MC: $IMG"
    generate_mc -i "$IMG"
  fi
done

echo "Hotovo!"
