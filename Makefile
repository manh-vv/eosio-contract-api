mk-docker-folder:
	mkdir -p /mnt/dn/redis
	mkdir -p /mnt/dn/postgresql

create-env:
	cp .env-sample .env

create-config:
	cp config/example-connections.config.json config/connections.config.json
	cp config/example-readers.config.json config/readers.config.json
	cp config/example-server.config.json config/server.config.json

docker-up-storages:
	docker compose up -d eosio-contract-api-postgres eosio-contract-api-redis

docker-up-filler:
	docker compose up -d eosio-contract-api-filler

docker-up-server:
	docker compose up -d eosio-contract-api-server
