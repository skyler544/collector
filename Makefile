sailUpDetach:
	./vendor/bin/sail up -d

node_modules: package-lock.json
	npm install

runFrontendDev: node_modules
	npm run dev

up: sailUpDetach runFrontendDev
