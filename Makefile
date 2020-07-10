VERSION=0.0.4

build:
	@docker build . --build-arg BASE_IMAGE="heroku/heroku:16" -t danielleadams/shpec-heroku-16:latest -t danielleadams/shpec-heroku-16:$(VERSION)
	@docker build . --build-arg BASE_IMAGE="heroku/heroku:18" -t danielleadams/shpec-heroku-18:latest -t danielleadams/shpec-heroku-18:$(VERSION)
	@docker build . --build-arg BASE_IMAGE="heroku/heroku:20" -t danielleadams/shpec:latest -t danielleadams/shpec-heroku-20:latest -t danielleadams/shpec-heroku-20:$(VERSION)

push:
	@docker push danielleadams/shpec-heroku-16:latest
	@docker push danielleadams/shpec-heroku-16:$(VERSION)
	@docker push danielleadams/shpec-heroku-18:latest
	@docker push danielleadams/shpec-heroku-18:$(VERSION)
	@docker push danielleadams/shpec-heroku-20:latest
	@docker push danielleadams/shpec-heroku-20:$(VERSION)
	@docker push danielleadams/shpec:latest
