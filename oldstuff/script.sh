#!/bin/bash

# Definizione delle variabili
FOLDER_NAME="server-mariadb-11.8.9"
ZIP_FILE="${FOLDER_NAME}.zip"

# estrai file
unzip "$ZIP_FILE" "$FOLDER_NAME/win/packaging/CMakeLists.txt"
unzip "$ZIP_FILE" "$FOLDER_NAME/win/packaging/ComponentsIgnore.cmake"
mv "$FOLDER_NAME" "a"

unzip "$ZIP_FILE" "$FOLDER_NAME/win/packaging/CMakeLists.txt"
unzip "$ZIP_FILE" "$FOLDER_NAME/win/packaging/ComponentsIgnore.cmake"
mv "$FOLDER_NAME" "b"

# Genera il file patch standard
# diff -uNrp a b > mariadb.patch
