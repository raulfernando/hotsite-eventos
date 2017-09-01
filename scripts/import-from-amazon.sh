#!/usr/bin/env bash
sudo chown -R $USER ../db
#Credenciais do Banco da Amazon
echo 'insira o usuario:'
read u
echo 'insira a senha:'
read p
echo 'INICIANDO DUMP:'
mysqldump --verbose -u$u -p$p -h revistamelhor.cwucaq5rmfvq.us-east-1.rds.amazonaws.com revistamelhor > ../db/db.sql
echo 'Dump finalizado, arquivo se encontra em /db/db.sql'

echo 'Deseja Importar para o BD local? s/n '
read confirm
if [[ "$confirm" == "s" ]]
then
    echo 'INICIANDO IMPORTACAO PARA BANCO LOCAL'
    ./docker-importdb.sh
    echo 'IMPORTACAO PARA BANCO LOCAL FINALIZADO'
fi
echo "FINALIZADO"
