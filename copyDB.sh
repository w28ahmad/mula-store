source '.env'

mysqldump --password=${MYSQL_ROOT_PASSWORD} --user=${DB_USER} ${DB_NAME} > dump_file.sql

mysql -h ${RDS_HOST} --password=${RDS_PASSWORD} --user=${RDS_USER} ${DB_NAME} < dump_file.sql

rm -rf dump_file.sql
