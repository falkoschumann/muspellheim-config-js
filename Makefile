# JavaScript configuration
JS := bun
PM := bun
RUN := bunx

# Make configuration
SHELL := /bin/bash

all: dist check

clean:
	rm -rf packages/*/build
	rm -rf packages/*/coverage
	rm -rf node_modules/.cache packages/*/node_modules/.cache

distclean: clean
	rm -rf packages/*/dist
	rm -rf node_modules packages/*/node_modules

dist: build
	$(PM) run --workspaces --if-present dist

check: coverage
	$(PM) run --workspaces --if-present lint
	$(PM) run --workspaces --if-present check-types
	$(PM) run format

fix:
	$(PM) run --workspaces --if-present lint:fix
	$(PM) run format:fix

test: prepare
	$(PM) run --workspaces --elide-lines=0 --if-present test

coverage: prepare
	$(PM) run --workspaces --elide-lines=0 --if-present test:coverage

watch: prepare
	$(PM) run --parallel --workspaces --if-present test:watch

build: prepare
	$(PM) run --workspaces --if-present build

prepare: version
ifdef CI
	$(PM) ci
else
	$(PM) install
endif

version:
	@echo "Use runtime $(JS) version $(shell $(JS) --version)"
	@echo "Use package manager $(PM) version $(shell $(PM) --version)"
	@echo "Use package runner $(RUN) version $(shell $(RUN) --version)"

.PHONY: \
	all clean distclean dist \
	check fix \
	test coverage watch \
	build prepare version
