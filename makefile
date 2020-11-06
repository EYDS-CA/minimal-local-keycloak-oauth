
start:
	docker-compose up -d
	docker-compose exec -T keycloak /bin/bash < create-users.sh

logs:
	docker-compose logs -f --tail=50
