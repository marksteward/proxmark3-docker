build:
	docker build -t proxmark .

run:
	docker run --rm -ti --privileged -v $$PWD/cards:/root/cards proxmark
