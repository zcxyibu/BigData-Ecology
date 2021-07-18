#!/bin/sh
#端口号
PG_PORT=5432
#数据库ip
PG_IP=10.45.150.60
#数据库用户名
USERNAME=zach
#数据库密码
PASSWORD=zach
#业务库库名
DBNAME=zach


export PGPASSWORD=${PASSWORD}
SQLDIRPATH=`pwd`
PGSQL_INIT_DATABASE="psql -U ${USERNAME} -h ${PG_IP} -d postgres -p ${PG_PORT}"
PGSQL_COMMAND="psql -U ${USERNAME} -h ${PG_IP} -d ${DBNAME} -p ${PG_PORT}"


${PGSQL_INIT_DATABASE} -c "create database ${DBNAME}"
${PGSQL_COMMAND} -f "${SQLDIRPATH}/create_schema.sql"
