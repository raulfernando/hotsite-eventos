#!/bin/bash

echo "=== INICIANDO DOCKER ==="

docker-compose up -d

echo "=== Deseja Instalar as dependencias? (s/n) ==="
read deps
if [[ $deps == "s" ]]
then
	npm install
fi

if hash gulp  2>/dev/null
then
	echo "=== INICIANDO GULP ==="
	gulp
else
	echo "=== O gulp nao foi encontrado, deseja instalar? ==="
	read gulp_i
	if [[ $gulp_i == "s" ]]
	then
		npm install gulp
	fi
fi
