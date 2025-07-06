SAIL := ./vendor/bin/sail

sailUpDetach:
	$(SAIL) up -d

node_modules: package-lock.json
	npm install

runFrontendDev: node_modules
	npm run dev

up: sailUpDetach runFrontendDev

backendTest:
	$(SAIL) artisan test
