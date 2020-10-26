.PHONY: build schemasafe remote

build:
	npm install && \
	npm run build
	git diff-index --quiet HEAD -- || { \
		echo "ERROR: Dirty repository found"; \
		git status --porcelain; \
		exit 1; }

schemasafe:
	npm install && \
	npm run schemasafe

remote:
	npm install && \
	npm run remote