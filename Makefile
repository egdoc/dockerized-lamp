clean:
	find DocumentRoot -mindepth 1 -! -name phpinfo.php -delete

compose:
	docker-compose up --build

compose-down:
	docker-compose down --rmi all --volumes --remove-orphans

deploy-nextcloud: clean
	curl -L https://download.nextcloud.com/server/releases/latest.tar.bz2 \
	  | tar -C DocumentRoot -xvpj --strip=1

deploy-wordpress: clean
	curl -L https://wordpress.org/latest.tar.gz \
	  | tar -C DocumentRoot -xvpz --strip=1

prune: clean compose-down
