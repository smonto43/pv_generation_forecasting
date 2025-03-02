#!/bin/bash

# Comando para asegurarse de que el contenedor esté listo
pip install --upgrade pip
pip install -r requirements.txt

# Mantener el contenedor activo para trabajar en VS Code
exec bash

# Dar permisos de ejecución
# chmod +x entrypoint.sh
