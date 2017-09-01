#!/bin/bash
  docker-compose exec db bash "/tmp/scripts/import.sh"
  echo "Arquivo importado com sucesso"