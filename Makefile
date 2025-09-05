.PHONY: build

setup:
	./src/scripts/setup.sh

test:
	python3 src/ct.py --version
	python3 src/ct.py --help

check:
	bash src/scripts/check.sh
	python3 src/ct.py test

install:
	./src/scripts/install.sh

dev:
	./src/scripts/dev.sh

api:
	./src/scripts/api.sh

rust:
	./src/scripts/build.sh

docs:
	bash src/scripts/generate_docs.sh

clean:
	-rm -rf .venv
	-rm -rf src/ct.egg-info/
	-docker stop ct
	-docker rm ct
