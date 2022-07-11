#!/bin/bash

docker-compose down
rm -rf ./master/data/*
rm -rf ./slave_1/data/*
rm -rf ./slave_2/data/*
docker-compose build
docker-compose up -d

# run next by hand

##bash
#docker exec mysql_master sh -c 'export MYSQL_PWD=111; mysql -u root -e ";"'

##run both queries in master db
#GRANT REPLICATION SLAVE ON *.* TO "mydb_slave_1_user"@"%" IDENTIFIED BY "mydb_slave_1_pwd"; FLUSH PRIVILEGES;
#GRANT REPLICATION SLAVE ON *.* TO "mydb_slave_2_user"@"%" IDENTIFIED BY "mydb_slave_2_pwd"; FLUSH PRIVILEGES;

##bash
#docker exec mysql_slave_1 sh -c 'export MYSQL_PWD=111; mysql -u root -e ";"'
#docker exec mysql_slave_2 sh -c 'export MYSQL_PWD=111; mysql -u root -e ";"'

#bash
#docker exec mysql_master sh -c 'exec mysqldump -u root -p111 --all-databases --master-data=2' > db_dump.sql

