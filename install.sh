#!/bin/bash

mkdir -p ~/.local/share/icons/hicolor/scalable/apps/
  
# Loop over icons  https://www.cyberciti.biz/faq/bash-loop-over-file/
ICONS=./icons/*
for i in $ICONS
do
  echo "Processing $i..."
  # Extract filename without extension https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
  filename=$(basename -- "$fullfile")
  extension="${filename##*.}"
  filename="${filename%.*}"
  # Install icon. Weird but svg icons still not supported https://gitlab.freedesktop.org/xdg/xdg-utils/-/issues/82
  cp $i ~/.local/share/icons/hicolor/scalable/apps/
done
