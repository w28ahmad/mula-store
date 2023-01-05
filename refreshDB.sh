source '.env'

# echo '[LOG] Creation insertion script'
# python3 generateInsertQuery.py 

if [[ $1 == "--prod" ]]; then
    if [[ -z "${RDS_HOST}" ]]; then
        echo "[Error] RDS_HOST not set" 1>&2
    elif [[ -z "${DB_USER}" ]]; then
        echo "[Error] DB_USER not set" 1>&2
    elif [[ -z "${RDS_PASSWORD}" ]]; then
        echo "[Error] RDS_PASSWORD not set" 1>&2
    else
        echo '[LOG] Creating DB'
        mysql -h ${RDS_HOST} --password=${RDS_PASSWORD} --user=${RDS_USER} < createQuestionStore.sql 2>&1
        
        # echo '[LOG] Migrating Data'
        # mysql -h ${RDS_HOST} --password=${RDS_PASSWORD} --user=${RDS_USER} < insertQuestionStore.sql 2>&1
    fi
else
    if [[ -z "${DB_HOST}" ]]; then
        echo "[Error] DB_HOST not set" 1>&2
    elif [[ -z "${DB_USER}" ]]; then
        echo "[Error] DB_USER not set" 1>&2
    elif [[ -z "${MYSQL_ROOT_PASSWORD}" ]]; then
        echo "[Error] MYSQL_ROOT_PASSWORD not set" 1>&2
    else
        # Set the script to exit as soon as any command returns a non-zero exit code
        set -e

        echo '[LOG] Taking a snapshot'
        mysqldump --password=${MYSQL_ROOT_PASSWORD} --user=${DB_USER} ${DB_NAME} > dump_file.sql

        echo '[LOG] Resetting the table'
        mysql --password=${MYSQL_ROOT_PASSWORD} --user=${DB_USER} < createQuestionStore.sql 2>&1
        
        echo '[LOG] Applying the snapshot'
        mysql --password=${MYSQL_ROOT_PASSWORD} --user=${DB_USER} ${DB_NAME} < dump_file.sql 2>&1

        echo '[LOG] Creating the views'
        mysql --password=${MYSQL_ROOT_PASSWORD} --user=${DB_USER} ${DB_NAME} < createQuestionStoreView.sql 2>&1

        # docker exec -i mula-mysql mysql --password=${MYSQL_ROOT_PASSWORD} --user=${DB_USER} < createQuestionStore.sql 2>&1
        # echo '[LOG] Migrating Data'
        # docker exec -i mula-mysql mysql --password=${MYSQL_ROOT_PASSWORD} --user=${DB_USER} < insertQuestionStore.sql 2>&1
        # mysql --password=${MYSQL_ROOT_PASSWORD} --user=${DB_USER} < insertQuestionStore.sql 2>&1
    fi
fi