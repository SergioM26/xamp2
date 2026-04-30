#!/bin/bash

echo 'Bajamos repositorio actualizado'
git pull origin master

echo 'Detenemos contenedores de la aplicación'
# Detenmos contenedores
sudo docker-compose down

echo 'Inicializamos contenedores y reconstruimos immagen actualizada'
# Inicializamos contenedores y reconstruimos
sudo docker-compose -f docker-compose.prod.yml up -d --build

echo 'Actualizacion finalizada'