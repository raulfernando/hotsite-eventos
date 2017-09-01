#!/bin/bash
docker-compose stop
git pull origin master
docker-compose -f docker-compose-prod.yml up -d