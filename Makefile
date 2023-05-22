runserver:
	mkdocs serve -v --dev-addr localhost:8001

build:
	mkdir -p docs/
	cp README.md docs/index.md
	cp CONTRIBUTING.md docs/CONTRIBUTING.md
	mkdocs build

deploy:
	mkdocs gh-deploy
