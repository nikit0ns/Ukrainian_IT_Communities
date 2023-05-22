# serve docs locally on <port>
runserver port="8001":
    mkdocs serve -v --dev-addr localhost:{{port}}

build:
    mkdir -p docs/
    cp $(pwd)/README.md $(pwd)/docs/index.md
    cp $(pwd)/CONTRIBUTING.md $(pwd)/docs/CONTRIBUTING.md
    mkdocs build
    echo -e Removing temp files
    rm docs/index.md
    rm docs/CONTRIBUTING.md

deploy:
    mkdocs gh-deploy
