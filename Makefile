IMAGE = ytnobody/swag
SWAGGO_VERSION = v1.7.1

build:
	docker build --build-arg SWAGGO_VERSION=$(SWAGGO_VERSION) -t $(IMAGE):$(SWAGGO_VERSION) ./
	docker build --build-arg SWAGGO_VERSION=$(SWAGGO_VERSION) -t $(IMAGE):latest ./

enter:
	docker run -v $(shell pwd):/app --entrypoint /bin/bash --rm -it $(IMAGE):$(SWAGGO_VERSION)  

run:
	docker run -v $(shell pwd):/app --rm -it $(IMAGE):$(SWAGGO_VERSION) init  