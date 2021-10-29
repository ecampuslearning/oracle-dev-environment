build:
	docker-compose up -d

connect:
	docker exec -it $(shell docker ps --filter name=oracle-db -aq) bash

query:
	docker exec -it $(shell docker ps --filter name=oracle-db -aq) bash -c 'ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe /u01/app/oracle/product/11.2.0/xe/bin/sqlplus system/oracle @./scripts/query.sql'

destroy:
	docker rm -f $(shell docker ps --filter name=oracle-db -aq)

logs:
	docker logs -f $(shell docker ps --filter name=oracle-db -aq)
