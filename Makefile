SAIL := ./vendor/bin/sail

vendor:	composer.lock
	composer install

sailDown: vendor
	$(SAIL) down

sailUpDetach: sailDown
	$(SAIL) up -d

sailArtisanMigrate:
	$(SAIL) artisan migrate

node_modules: package-lock.json
	npm install

runFrontendDev: node_modules
	npm run dev

up: sailUpDetach runFrontendDev

backendTest:
	$(SAIL) artisan test
