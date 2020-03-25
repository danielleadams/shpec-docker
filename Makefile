VERSION=0.0.4

build:
	@docker build . -t danielleadams/shpec:latest -t danielleadams/shpec:$(VERSION)

push:
	@docker push danielleadams/shpec:latest
	@docker push danielleadams/shpec:$(VERSION)
