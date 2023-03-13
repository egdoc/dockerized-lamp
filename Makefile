.PHONY: compose
compose:
	docker-compose up --build

.PHONY: deploy-wordpress
deploy-wordpress: clean
	curl -L https://wordpress.org/latest.tar.gz \
	  | tar -C DocumentRoot -xvpz --strip=1

.PHONY: deploy-nextcloud
deploy-nextcloud: clean
	curl -L https://download.nextcloud.com/server/releases/latest.tar.bz2 \
	  | tar -C DocumentRoot -xvpj --strip=1

.PHONY: clean
clean:
	find DocumentRoot -mindepth 1 -! -name phpinfo.php -delete

.PHONY: compose-down
compose-down:
	docker-compose down --rmi all --volumes --remove-orphans

.PHONY: prune
prune: clean compose-down
