docker:=sudo docker

emacsd: build
	$(docker) push nicferrier/emacsd

build:
	$(docker) build -t nicferrier/emacsd .

# End
