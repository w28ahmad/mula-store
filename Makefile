#!make
include .env

export $(shell sed 's/=.*//' .env)

# MULA_MYSQL_IP := $(shell docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mula-mysql)

mysql-container-docker:
	docker run --name mula-mysql -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} -d mysql:latest

# mysql-connect-docker:
# docker run -it --network bridge --rm mysql mysql -h $(MULA_MYSQL_IP) -u ${DB_USER} -p

mysql-connect-rds:
	mysql -h ${RDS_HOST} -u ${DB_USER} --password=${RDS_PASSWORD}

mysql-rds-migrate:
	./refresh.sh --prod

.PHONY: mysql-container-docker mysql-connect-rds
